//your c//your code here
Particle[] bob = new Particle[200];
void setup()
{
  //your code here
  size(500,500);
  for (int i = 0; i < bob.length; i++){
    bob[i] = new NormalParticle();
  }
  bob[5] = new JumboParticle();
  bob[123] = new OddballParticle();
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
class NormalParticle implements Particle
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
  public void show();
  public void move();

}
class OddballParticle implements Particle//uses an interface
{
  //your code here
  int x, y, theColor;
  OddballParticle(){
    x = y = 250;
    theColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  public void move (){
    x = x + ((int)(Math.random()*5)-2);
    y = y + ((int)(Math.random()*5)-2);
  }
  public void show (){
    fill(theColor);
    stroke(theColor);
    ellipse(x, y, 5, 5);
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
