fih [] blob;
hearty []  Hearts;
void setup()
{
  size(400,400);
  //background(76,66,181);
  for(int i = 0; i< Hearts.length; i++)
    Hearts [i] = new hearty();
  
}
void draw()
{
  Hearts[i].move();
  Hearts[i].show();
}
class hearty
{
  double myX, myY, mySpeed, myColor;
  int myAngle;
  
 void Hearts()
  {
    myX = 200;
    myY = 200;
    mySpeed = Math.random()*16;
    myAngle = (int)(Math.random()*2*Math.PI);
    myColor = color((int)(Math.random()*255), (int)(Math.random()*6),(int)(Math.random()*140));
  }//end heart
  
  void move()
  {
    
  }//end move
  
  void show()
  {

  noStroke();
  fill(49,90,142,10);
  rect(0,0,400,400);
  fill(11,132,142,10);
  rect(50,50,100,100);
  fill(82,245,156,10);
  rect(100,100,100,100);
  background(0,45,103,10);

  int myX, myY;
  myX = 100;
  myY = 100;
  //fill ((int)(Math.random()*255)+1, (int)(Math.random()*100)+1, (int)(Math.random()*80)+1);
  ellipse (myX, myY, 20,20);
  
  }//end show
  
}//end hearty class

class fih extends hearty//inherits from Particle
{
  myY = 400;
  myX = 250;
  
}
