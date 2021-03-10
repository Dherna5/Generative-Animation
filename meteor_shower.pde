Circle[] circles = new Circle[10]; //array of 10 circles

void setup(){
  size(600,600); //size of window
  smooth();
  frameRate(30);
  for (int i = 0; i < circles.length; i++){ //loop creates circles
  circles[i] = new Circle();
  }
}

void draw(){
  background(20,0,50); // background color
  for (int i = 0; i < circles.length; i++){ //
    circles[i].fall(); //determines direction, location, and speed
    circles[i].show(); //draws circles
  }
 
}  
 
