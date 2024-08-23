import processing.serial.*;

Serial myPort;
String data = "";
PFont myFont;

void setup() {
  size(1366, 900);
  background(0);
  myPort = new Serial(this, "COM4", 9600);
  myPort.bufferUntil('\n');
  myFont = createFont("Arial", 100); // Initialize font
  textFont(myFont); // Set font
}

void draw() {
  background(0);
  textAlign(CENTER);
  fill(255);
  text(data, 820, 400);
  textSize(100);
  fill(#4B5DCE);
  text("Distance:", 450, 400);
  noFill();
  stroke(#4B5DCE);
}

void serialEvent(Serial myPort) {
  data = myPort.readStringUntil('\n');
  data = data.trim(); // Remove newline character
}
