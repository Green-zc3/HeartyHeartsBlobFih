hearty []  Hearts = new hearty [88];
fih [] blob = new fih [1];

void setup()
{
  size(400,400);
 // Hearts = new hearty();
  for(int i = 0; i< Hearts.length; i++)
    Hearts [i] = new hearty();
    
  for(int i = 0; i < blob.length;i++)
    blob [i] = new fih();
}
void draw()
{
  background(0,45,103,10);
  
  if(frameCount > 50){
  for(int i = 0; i < blob.length; i++){
  blob[i].move();
  blob[i].show();
  }
 }
  for(int i = 0; i< Hearts.length; i++){
  Hearts[i].move();
  Hearts[i].show();
  }

}
class hearty
{
  double myX, myY, mySpeed, myAngle;
  
 hearty()
  {
    myX = 200;
    myY = 200;
    mySpeed = Math.random()*1.5+0.5;
    myAngle = (Math.random()*2*Math.PI);
  }//end heart
  
  void move()
  {
  //myAngle += 0.03;
  myX = myX + (Math.cos(myAngle) * mySpeed); //cos horizontal
  myY = myY + (Math.sin(myAngle) * mySpeed); // sin vertical


  }//end move
  
  void show()
  {

  //fill ((int)(Math.random()*255)+1, (int)(Math.random()*100)+1, (int)(Math.random()*80)+1);
  noStroke();
  fill(255,0,0);
  ellipse((float)myX- 12, (float)myY- 7, 33, 33);
  ellipse((float)myX+ 12, (float)myY- 7, 33, 33);
  triangle((float)myX- 29,(float)myY - 3, (float)myX + 29, (float)myY - 3, (float)myX, (float)myY + 35);
 
  }//end show
  
}//end hearty class

class fih extends hearty//inherits from Particle
{
  fih(){
   myY = 200;
   myX = 200;
  mySpeed = Math.random() * 1.5 + 0.5;
  myAngle = (Math.random() * 2 * Math.PI);
  
  }//end fih
  
   void move (){
    myX = myX + (int)(Math.random()*3)-1;
    myY = myY + (int)(Math.random()*3)-1;
  }//end move
  
   void show(){
      noStroke();
      
      float fx = (float)myX;
      float fy = (float)myY;
  //fins
    fill(255, 152, 195);
    ellipse(fx- 75, fy + 15, 30, 20);
    ellipse(fx+72, fy + 15, 30, 20);
    fill(0);
    rect(fx-90,fy+12, 20,2);
    rect(fx- 85,fy +22, 20, 2);
    rect(fx-87,fy+ 16,20, 2);
    rect(fx +60,fy +12, 20, 2);
    rect(fx+ 63,fy + 16,20, 2);
    rect(fx + 67,fy+ 20,20,2);
    
  
  //body
  fill(255,224,237);
  ellipse(fx,fy,153,123);
  
  //eyes
  fill (0);
  ellipse (fx-37,fy-10,9,9);
  ellipse (fx+35,fy-10,9,9);
  
  //mouth
    fill(216,153,179);
    rect(fx -45,fy +20,88,10);
    ellipse(fx- 40,fy + 30,25, 20);
    ellipse(fx,fy+20,33,43); // undernose
    ellipse(fx + 35,fy+28,20,20);
    
  
 //nose
 fill(255,209,228);
 ellipse(fx, fy+10, 30,50);
 fill(255,224,237);
 ellipse(fx,fy -15,30,30);
 
  }//end show
  
}//end class fih
