import processing.serial.*;

color bg_color = #AABBCC;
Voltmeter v;
Serial port;

void setup() {
  size(1000, 800);
  background(bg_color);
  
  v = new Voltmeter(new PVector(1000/2, 800/2), new PVector(0, 1023), new PVector(0, 5), new PVector(-HALF_PI, HALF_PI));
  
  port = new Serial(this, Serial.list()[0], 9600);
}

void draw() {
  while(port.available() > 0) {
    String info = port.readStringUntil('\n');
    if(info != null) {
      v.display(float(info));
    }
  } 
}
