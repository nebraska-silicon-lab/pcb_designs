#include <Wire.h>
#include <Adafruit_ADS1015.h>
 
Adafruit_ADS1115 ads(0x48);
 
void setup(void)
{
Serial.begin(9600);
Serial.println("Hello!");
 
Serial.println("Getting single-ended readings from AIN0..3");
Serial.println("ADC Range: +/- 6.144V (1 bit = 3mV/ADS1015, 0.1875mV/ADS1115)");
 
ads.begin();
ads.setGain(GAIN_ONE);
}
 
void loop(void)
{
int16_t adc0, adc1, adc2, adc3;
float v0, v1, v2, v3;

adc0 = ads.readADC_SingleEnded(0);
adc1 = ads.readADC_SingleEnded(1);
adc2 = ads.readADC_SingleEnded(2);
adc3 = ads.readADC_SingleEnded(3);

v0 = 2*4.096 * (adc0 / 65536.0);
v1 = 2*4.096 * (adc1 / 65536.0);
v2 = 2*4.096 * (adc2 / 65536.0);
v3 = 2*4.096 * (adc3 / 65536.0);

Serial.print("V0: ");
Serial.println(v0);
Serial.print("V1: ");
Serial.println(v1);
Serial.print("V2: ");
Serial.println(v2);
Serial.print("V3: ");
Serial.println(v3);
Serial.println(" ");
 
delay(1000);
}
