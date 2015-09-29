Snowflake snowy[];
void setup()
{
  size(300,300);
}
void draw()
{
  //your code here
  background(0);
  snowy = new Snowflake[50];
  for(int i = 0; i<0; i++) snowy[i] = new Snowflake();
  for(int k = 0; k<0; k++){
    snowy[k].erase();
    snowy[k].lookDown();
    snowy[k].move();
    snowy[k].wrap();
    snowy[k].show();
  }
}
void mouseDragged()
{
  //your code here
   if(mouseButton == LEFT){
    fill((int)(Math.random()*256)+1,(int)(Math.random()*256)+1,(int)(Math.random()*256)+1);
  }
}

/*void mousePressed(){//or Dragged
  if(mouseButton == LEFT){
    fill((int)(Math.random()*256)+1,(int)(Math.random()*256)+1,(int)(Math.random()*256)+1);
  }
  else if(mouseButton == RIGHT){
    Snowflake.erase();
  }
}
*/
class Snowflake
{
  //class member variable declarations
  int x, y;
  boolean isMoving;
  Snowflake()
  {
    //class member variable initializations
    x = (int)(Math.random()*290)+5;
    y = (int)(Math.random()*290)+5;
    isMoving = true;
  }
  void show()
  {
    //your code here
    fill(255,255,0);
    ellipse(x, y, 5, 5);
  }
  void lookDown()
  {
    //your code here
    if((0<y && y<300) && get(x,y)!=0) isMoving = false;
    else isMoving = true;
  }
  void erase()
  {
    //your code here
    fill(0);
    ellipse(x, y, 7, 7);
  }
  void move()
  {
    if(isMoving) y++;
    //your code here
  }
  void wrap()
  {
    //your code here
    if(y>=305){
      y = 0;
      x = (int)(Math.random() * 290)+5;
    }
  }
}


