public class Firework
{
  
  private FireworkParticle firework;
  private color fireworkColor;
  private ArrayList<FireworkSpark> sparks;
  
  Firework(FireworkParticle fireworkParticle, color flameColor)
  {
    firework = fireworkParticle;
    fireworkColor = flameColor;
    sparks = new ArrayList<FireworkSpark>();
  }
  
  public color GetColor()
  {
     return fireworkColor; 
  }
  
  public float GetSpeed()
  {
    return -firework.GetVelocity();
  }
  
  public void Draw()
  {
    fill(fireworkColor);
    firework.Draw();
  }
  
  public void Update()
  { 
    firework.Update();
  }
  
  public ArrayList<FireworkSpark> Explode()
  {
    
    for(int i = 0; i < 100; i++)
    {
      FireworkSpark newSpark = new FireworkSpark(firework, this);
      sparks.add(newSpark);
    }
    
    return sparks;
   
  }
    
  
  
}
