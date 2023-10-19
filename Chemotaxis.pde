Walker [] butt;
void setup()
{
  size(500,500);
   butt = new Walker[30];   
   for(int i=0; i < butt.length; i++)
   butt[i] = new Walker();
}
void draw()
{
  background(0);

  
  for(int i=0; i < butt.length; i++){
    butt[i].walk();
    butt[i].show();

   }
}

class Walker
{
  int myX,myY, buttcolorR, buttcolorG, buttcolorB;
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
    buttcolorR = (int)(Math.random()*120)+500;
    buttcolorG = (int)(Math.random()*120)+237;
    buttcolorB = (int)(Math.random()*120)+120;
    fill(buttcolorR,buttcolorG,buttcolorB);
    ellipse(myX,myY,30,30);
  }
}
