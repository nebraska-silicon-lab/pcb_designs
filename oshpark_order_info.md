Ordering boards from OSH Park
=============================

Last updated: Dec 13, 2019

## Step 1: Gather design files

If designing using KiCAD, the `.kicad_brd` file is exactly what you will need to upload. However, you can also plot the 
gerber files for your board, zip them up, and upload them.

## Step 2: Upload the design

Navigate to oshpark.com and click on "Browse for files"

![click this.](https://i.imgur.com/TfwFV35.png)

Select the `.kicad_pcb` file or gerber zip file and upload it. After OSH Park is finished processing the board it will present you
with a preview of the board and possibly some warnings and errors about missing layers or other files. If your board doesn't use
these layers, you can tell OSH Park that everything is fine and move on. For example, the below board doesn't have any exposed
copper on the bottom that would require a soldermask, hence the missing layer. There are also no holes or vias so a drill file
not generated either. Finally, you can give the board a name and a description on this screen. When ready, click "Continue".

![board preview](https://i.imgur.com/k77hQyq.png)

The next page will display the layers of the board. Check through them and make sure to read the descriptions if you are
unfamiliar with what the layers mean. If everything looks ok, click "save".

You should be redirected to [your current projects](https://oshpark.com/users/current). Click on "Start Sharing" for the
board you uploaded. This should create a "Permalink" that you can use to share your design. Be sure to include this permalink
when you submit your requisition to the buisiness office.

## Step 3: Prepare the requisision

Under [your current projects](https://oshpark.com/users/current), click "Order Board" for the design you want to have made.
Select the quantity you want and make note of the price. The "Item Cost" is the price per 3 boards. Next fill in a requisition.
You can use [this one](https://github.com/nebraska-silicon-lab/Phase_II_Requisitions/blob/master/2019_12_OSHPark_bond-tester.pdf)
as a template.

## Step 4: Place the order (Office start here)

  - Follow the link to the shared design in the Requisition "Special Instructions" field.
  - Click "Order Board"
  - Login
  - Update the Quantity to the amount specified in the requisition. Note that the boards come in sets of three. The Requisition
 will specify the number of sets to order, but the webpage needs the number of boards. For example, if the requisition specifies 
 4 orders, enter 12 in the webpage.
   - Select other options if requested.
   - Click "Checkout" and proceed to complete order.
  
