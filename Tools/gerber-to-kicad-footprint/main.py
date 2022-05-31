import argparse
import gerber
from gerber.primitives import Region, Rectangle, Line
from pathlib import Path


def convert(gerber_filename):
    gerber_path = Path(gerber_filename)
    gerber_file = gerber.read(gerber_path)

    # Find just the SMD pads
    smd_pads = [p for p in gerber_file.primitives if isinstance(p, Rectangle)]
    smd_pads.sort(key=lambda p: p.position[0])

    ss_lines = []
    for p in gerber_file.primitives:
        if not isinstance(p, Region):
            continue
        for pp in p.primitives:
            if isinstance(pp, Line):
                ss_lines.append((pp.start, pp.end, 0.003))

    # find bounding box to center the resulting footprint at (0,0)
    left = min(pad.position[0]-0.5*pad.width for pad in smd_pads)
    right = max(pad.position[0]+0.5*pad.width for pad in smd_pads)
    top = min(pad.position[1]-0.5*pad.height for pad in smd_pads)
    bottom = max(pad.position[1]+0.5*pad.height for pad in smd_pads)

    cx = 25.4*0.5*(left + right)
    cy = 25.4*0.5*(top + bottom)

    with open(gerber_path.with_suffix('.kicad_mod'), 'w') as f:
        f.write(f'(module {gerber_path.stem} (layer F.Cu) (tedit 612FE60C)\n')

        for idx, pad in enumerate(smd_pads):
            x, y = 25.4*pad.position[0], 25.4*pad.position[1]
            w, h = 25.4*pad.width, 25.4*pad.height
            f.write(f"  (pad {idx+1} smd rect (at {x-cx} {-1*(y-cy)}) (size {w} {h}) (layers F.Cu F.Mask)\n"
                    # f"    (solder_mask_margin 0.15)\n"
                    ")\n"
                    )

        for line in ss_lines:
            sx, sy = 25.4 * line[0][0], 25.4 * line[0][1]
            ex, ey = 25.4 * line[1][0], 25.4 * line[1][1]
            w = 25.4 * line[2]
            f.write(f"  (fp_line (start {sx-cx} {-1*(sy-cy)}) (end {ex-cx} {-1*(ey-cy)}) "
                    f"(layer F.SilkS) (width {w}))\n"
                    )

        f.write(')\n')

    with open(gerber_path.with_suffix('.kicad_mod'), 'r') as f:
        for line in f.readlines():
            print(line.rstrip())


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('gerber_file')
    args = parser.parse_args()
    convert(args.gerber_file)
