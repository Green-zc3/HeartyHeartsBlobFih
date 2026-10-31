fih [] blob = new fih [2];
hearty []  Hearts = new hearty [100];
void setup()
{
  size(400,400);
  background(0,45,103);
 // Hearts = new hearty();
  for(int i = 0; i< Hearts.length; i++)
    Hearts [i] = new hearty();
  
}
void draw()
{
  for(int i = 0; i< 100; i++){
 // Hearts[i].move();
  Hearts[i].show();
  }
}
class hearty
{
  double myX, myY, mySpeed, myAngle;
  int myColor;
  
 hearty()
  {
    myX = 200;
    myY = 200;
    mySpeed = Math.random()*8+2;
    myAngle = (Math.random()*2*Math.PI);
    myColor = color(243,86,76);
  }//end heart
  
  void move()
  {

  myX = myX + (Math.cos(myAngle) * mySpeed); //cos horizontal
  myY = myY + (Math.sin(myAngle) * mySpeed); // sin vertical


  }//end move
  
  void show()
  {

  myX = 200;
  myY = 200;
  //fill ((int)(Math.random()*255)+1, (int)(Math.random()*100)+1, (int)(Math.random()*80)+1);
  fill(myColor);
  noStroke();
  ellipse((float)myX- 17, (float)myY- 10, 45, 45);
  ellipse((float)myX+ 17, (float)myY- 10, 45, 45);
  triangle((float)myX- 39,(float)myY - 5, (float)myX + 39, (float)myY - 5, (float)myX+1, (float)myY + 47);
  
  }//end show
  
}//end hearty class

class fih extends hearty//inherits from Particle
{
  fih(){
   myY = 400;
   myX = 250;
  
  }//end fih
}
