public void setup()
{
  background(0);
  size (800,800);
}
public void draw()
{
  myFractal(200,350,300);
  myFractal(600,250,300);
  myFractal(400,600,300);
}

public void myFractal(int x, int y, int siz) 
{
  ellipse (x,y,siz,siz);
  fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  stroke(255);
  if (siz>15){
    myFractal(x,y,siz/2);
    myFractal(x,y-siz,siz/2);
  }
}
