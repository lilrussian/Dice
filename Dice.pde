int sum = 0;
void setup()
{
  
  size(500,510);
  background(0,0,0);
  noLoop();
}
void draw()
{
  int r = (int)(Math.random()*256+1);
  int g = (int)(Math.random()*256+1);
  int b = (int)(Math.random()*256+1);
  background(r,g,b);
  for(int x = 5; x < 480; x+=55){
    for(int y = 5; y<400; y+=55){
      Die joe = new Die(x,y);
      joe.roll();
      joe.show();
      
    }
  }

  textSize(35);
  text("Sum of Dice: " + sum, 130,490);
}
void mousePressed()
{
  sum = 0;
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
     dieRoll = (int)(Math.random()*6+1);
     //dieRoll = 1;
     
 
  }
  void show()
  {
    fill(250);
    rect(myX, myY, 50, 50, 15);

   if (dieRoll == 1){
      fill(0);
      ellipse(myX+25,myY+25,10,10);
      sum++;
    
   }
   if (dieRoll == 2){
      fill(0);
      ellipse(myX+37,myY+15,10,10);
      ellipse(myX+15,myY+37,10,10);
      sum+=2;
    
   }
   if (dieRoll == 3){
      fill(0);
      ellipse(myX+35,myY+13,10,10);
      ellipse(myX+15,myY+37,10,10);
      ellipse(myX+25,myY+25,10,10);
      sum+=3;
    
   }
   if (dieRoll == 4){
      fill(0);
      ellipse(myX+12,myY+12,10,10);
      ellipse(myX+38,myY+12,10,10);
      ellipse(myX+12,myY+38,10,10);
      ellipse(myX+38,myY+38,10,10);
      
      sum+=4;
   }
   if (dieRoll == 5){
      fill(0);
      ellipse(myX+25,myY+25,10,10);
       ellipse(myX+12,myY+12,10,10);
      ellipse(myX+38,myY+12,10,10);
      ellipse(myX+12,myY+38,10,10);
      ellipse(myX+38,myY+38,10,10);
      sum+=5;
    
   }
   if (dieRoll == 6){
      fill(0);
      ellipse(myX+12,myY+12,10,10);
      ellipse(myX+38,myY+12,10,10);
      ellipse(myX+12,myY+38,10,10);
      ellipse(myX+38,myY+38,10,10);
      ellipse(myX+12,myY+25,10,10);
      ellipse(myX+38,myY+25,10,10);
      
      sum+=6;
    
   }
   
  }
}
