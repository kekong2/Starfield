//your c//your code here
void setup()
{
  //your code here
}
void draw()
{
  //your code here
}
class NormalParticle
{
  double X, Y, Speed, Angle;
  int Color; 
  NormalParticle(){
    X = Y = 250;
    Speed = Math.random()*100-50;
    Angle = (float)(Math.random()*6);
    Color = ((int)Math.random()*256, (int)Math.random()*256, (int)Math.random()*256);
  }
  public void move(){}
  public void show(){}
}
interface Particle
{
  //your code here
}
class OddballParticle //uses an interface
{
  //your code here
}
class JumboParticle //uses inheritance
{
  //your code here
}
