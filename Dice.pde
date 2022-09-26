void setup()
{
  
  size(500,500);
  background(0,0,0);
  noLoop();
}
void draw()
{
  for(int x = 5; x < 480; x+=55){
    for(int y = 5; y<400; y+=55){
      Die joe = new Die(x,y);
      joe.show();
    }
  }
  
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY;
  int dieRoll;
  
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
  }
  void roll()
  {
     //dieRoll = (int)(Math.random()*6+1);
     dieRoll = 1;
 
  }
  void show()
  {
    dieRoll = 1;
    rect(myX, myY, 50, 50, 15);

   if (dieRoll == 1){
      fill(0,0,0);
      ellipse(myX+25,myY+25,10,10);
    
   }
  }
}
