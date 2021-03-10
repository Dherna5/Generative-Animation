//Based off of "Purple Rain" by The Coding Train
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

class Circle{
  float x = random(width); //random x position
  float y = random(-500,-50); //random y position, negative y position to start off screen
  float z = random(0,20); //z value to give perspective, farther and near
  float xspeed = random(1,10); //x and y speeds
  float yspeed = map(z, 0, 20, 1,10);
  //float len = map(z, 0, 20, 10, 20);
  
  void fall(){ //speeds of circles
    x = x + xspeed;
    y = y + yspeed;
    
    if (x > width){
      x = 0;
    }
    if (y > height){
      y = random(-200,-100);
      yspeed = map(z, 0, 20, 10, 20);
  }
}

  void show(){
    float thick = map(z, 0, 20, 10, 100); //size of ellipse
    float sthick = map(z, 0, 20, .5, 20); //thickness of outline
    //float tx = random(1,50);
    //float ty = random(1,50);
    strokeWeight(sthick);
    stroke(random(100,255),100,0);
    fill(100);
    ellipse(x,y,thick,thick);
    //ellipse(x,y,tx,ty);
    
     if(mousePressed){
    float tx = random(10,100);
    float ty = random(10,100);
    strokeWeight(sthick);
    stroke(255,255,100);
    fill(255);
    ellipse(x,y,tx,ty);
  }
  }
}
