Walker [] ufo;
void setup()
{
  size(550,550);
   ufo = new Walker[30];   
   for(int i=0; i < ufo.length; i++)
   ufo[i] = new Walker();
}
void draw()
{
  background(0);

  
  for(int i=0; i < ufo.length; i++){
    ufo[i].walk();
    ufo[i].show();

   }
}

class Walker
{
  int myX,myY, ufocolorR, ufocolorG, ufocolorB;
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
    ufocolorR = (int)(Math.random()*120)+125;
    ufocolorG = (int)(Math.random()*120)+255;
    ufocolorB = (int)(Math.random()*120)+50;
     fill(ufocolorR,ufocolorG,ufocolorB);
     ellipse(myX,myY-10,25,15);
     fill(255,255,255);
     ellipse(myX,myY,35,15);
    
     
  }
}
