import processing.opengl.*;

int dim =             2;
int sep =             3;
int num =             10;
int span =            num/2;

float prevTime =      0;
float prevRate =      0;
float totalFrames =   0;
float angle =         0;

// times in milliseconds
int runTime =         10 * 1000;
int warmUp =          2 * 1000;
int endMillis =       runTime + warmUp;

void setup() {
  size(800, 600, OPENGL);
  noStroke();
  fill(255);
  frameRate(120);
  
//  PFont fontA = loadFont("Arial");
//  textFont(fontA, 10);
}

void draw() {
//  lights();
  pointLight(255, 255, 255, // color
             0, 0, 300);    // position
  
  background(0);
//  text(frameRate, 10, 10);
  
//  float camZ = (height/1.0) / tan(PI*60.0/360.0);
//  camera(mouseX, mouseY, camZ, 
  camera(0, 1, 75,
         0, 0, 0,  // look at
//         width/2.0, height/2.0, 0,
         0, 1, 0);
  
  float time = millis();
  float dt = (time - prevTime);
  angle += .0002 * dt;
  prevTime = time;
  
  if ( time > warmUp ) {
    if (prevRate != frameRate) {
      totalFrames += dt * prevRate;
      println("Total Frames: " + totalFrames);
    }
  }
  prevRate = frameRate;

  // center camera
  
//  translate(0, -sep*num/2.0, 0);
  rotateY(angle);
  
  for (int k = -span; k < span; k++){
    for (int i = -span; i < span; i++){
      for (int j = -span; j < span; j++){
      
        
        pushMatrix();
        translate(i*sep, j*sep, k*sep);
//        sphere(dim);
        box(dim, dim, dim);
        popMatrix();
      
//        translate(0, sep, 0);
      }
//      translate(sep, -num*sep, 0);
    }
//    translate(-num*sep, 0, -sep);
  }
  
  if (time > endMillis) {
    exit();
    println("Total Frames: " + totalFrames);
    println("Average Frame Rate: " + (totalFrames / runTime) );
  }
}
