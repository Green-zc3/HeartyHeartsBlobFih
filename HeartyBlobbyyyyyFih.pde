fih [] blob;
hearty []  Hearts;

void setup()
{
  size(400,400);
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
  double myX, myY, mySpeed, myAngle, myColor;
  
  Hearts()
  {
    myX = 200;
    myY = 200;
    mySpeed = Math.random()*16;
    myAngle = Math.random()*2*Math.PI;
    myColor = color((int)(Math.random()*255), (int)(Math.random()*6),(int)(Math.random()*140));
  }//end heart
  
  void move()
  {
    
  }//end move
  void show()
  {
    
  }//end show
  
}//end hearty class

class fih extends hearty//inherits from Particle
{
  //your code here
}
