Walker [] fly;
void setup()
{
  size(550,550);
   fly = new Walker[30];   
   for(int i=0; i < fly.length; i++)
   fly[i] = new Walker();
}
void draw()
{
  background(0);

  
  for(int i=0; i < fly.length; i++){
    fly[i].walk();
    fly[i].show();

   }
}

class Walker
{
  int myX,myY, flycolorR, flycolorG, flycolorB;
  Walker()
  
  {
    myX = myY = 250 ;
  }
  void walk()
  {
  
   if(mouseX > myX)
   myX = myX + (int)(Math.random()*10)-3;
   else
     myX = myX + (int)(Math.random()*10)-5;
  
  if(mouseY > myY)
   myY = myY + (int)(Math.random()*10)-3;
   else
     myY = myY + (int)(Math.random()*10)-5;  
  
     
  }
  void show()
  {
    flycolorR = (int)(Math.random()*120)+125;
    flycolorG = (int)(Math.random()*120)+500;
    flycolorB = (int)(Math.random()*120)+1;
     fill(255,255,255);
     ellipse(myX,myY,35,20);
     fill(flycolorR,flycolorG,flycolorB);
     ellipse(myX,myY,15,25);
  }
}
