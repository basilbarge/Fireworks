class FireworkSpark
{
  
  private PVector position;
  private PVector velocity;
  private PVector acceleration;
  private Firework baseFirework;
  
  public FireworkSpark(Particle baseParticle, Firework explodedFirework)
  {
    position = new PVector(baseParticle.GetPosition().x, baseParticle.GetPosition().y);
    velocity = new PVector(random(-40, 40), random(-30, 30));
    acceleration = new PVector(0, baseParticle.GetAcceleration());
    baseFirework = explodedFirework;
  }
  
  public PVector GetPosition()
  {
     return position; 
  }
  
  public void Draw()
  {
    fill(baseFirework.GetColor());
    circle(position.x, position.y, 25);
  }
  
  public void Update()
  {
    //in the display grid, subtracting pixel distance
    //moves the particle upwards
    position.add(velocity);
    velocity.add(acceleration);
  }
  
  
}
