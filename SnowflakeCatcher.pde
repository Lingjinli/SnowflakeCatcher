Snowflake[] bob = new Snowflake[100];
void setup()
{
  //your code here
  size(300,300);
  background(0);
  for (int i=0; i<100; i++)
  {
    bob[i] = new Snowflake();
  }

}
void draw()
{
  //your code here
  for (int i=0; i<100; i++)
  {
     bob[i].erase();
     bob[i].lookDown();
     bob[i].move();
     bob[i].wrap();
     bob[i].show();
  }

}
void mouseDragged()
{
  //your code here
  fill(200,0,0);
  rect(mouseX,mouseY,10,10);
}

class Snowflake
{
  //class member variable declarations
  int x,y;
  boolean isMoving;
  Snowflake()
  {
    //class member variable initializations
    x = (int)(Math.random()*300);
    y = (int)(Math.random()*300);
    isMoving = true;
  }
  void show()
  {
    //your code here
    fill(255);
    ellipse(x,y,5,5);
  }

  void lookDown()
  {
    //your code here
    if(y>=0 && y<=300 && get(x,y+6)!=color(0,0,0))
    {
      isMoving = false;
    }
  }
  void erase()
  {
    //your code here
    fill (0);
    ellipse(x,y,7,7);
  }
  void move()
  {
    //your code here
    if(isMoving)
    {
      y++;
    }
  }
  void wrap()
  {
    //your code here
    if (y>=300)
    {
      y=0;
      x=(int)Math.random()*300;
    }
  }
}


