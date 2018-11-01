//your c//your code here
NormalParticle[] bob = new NormalParticle[200];
void setup()
{
  //your code here
  size(500,500);
  for (int i = 0; i < bob.length; i++){
    bob[i] = new NormalParticle();
  }
  bob[5] = new JumboParticle();
}
void draw()
{
  //your code here
  background(0);
  for (int i = 0; i < bob.length; i++){
    bob[i].show();
    bob[i].move();
  }
}
class NormalParticle
{
  double myX, myY, mySpeed, myAngle;
  int myColor; 
  NormalParticle(){
    myX = myY = 250;
    mySpeed = Math.random()*10;
    myAngle = (float)(Math.random()*2*Math.PI);
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  public void move(){
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }
  public void show(){
    fill(myColor);
    stroke(myColor);
    ellipse((int)myX,(int)myY,5,5);
  }
}
interface Particle
{
  //your code here
}
class OddballParticle //uses an interface
{
  //your code here
  double x, y;
  int theColor;
  OddballParticle(){
    x = y = 250;
  }

}
class JumboParticle extends NormalParticle//uses inheritance
{
  //your code here
  public void show(){
    fill(myColor);
    stroke(myColor);
    ellipse((int)myX,(int)myY,30,30);
  }
}
