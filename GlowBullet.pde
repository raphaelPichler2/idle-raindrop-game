class GlowBullet extends Drops{
  
  int number;
  float pointBonus2;
  
  GlowBullet(float x,int number){
    super();
    pointBonus=5;
    pointBonus2=450;
    speed=6/screenSize;
    posX=x;
    this.number=number;
    if(doubleMode){
      Hp=Hp*2;
      pointBonus=pointBonus*2;
      pointBonus2=pointBonus2*2;
    }
  }
  
  void draw(){
    if(Hp<=0){
      int dropsLeft=0;
      for(int n=0;n<drops.size();n++){
        if(drops.get(n) instanceof GlowBullet)dropsLeft++;
      }
      if(dropsLeft<=0)points=points+(int)(pointBonus2*pointsPKill);
      drops.remove(this);
      points=points+(int)(pointBonus*pointsPKill);
    }
    posY=posY+speed;
    fill(#4BFF55);
    image(glowDropI,posX,posY,size*1.2,size*1.2);
    hitDetect();
    if(posY>800){
      if(shop.PMUp>0)points=points+(int)(0.2*(float)Math.pow(1.5,shop.PMUp-1)*pointBonus*pointsPKill);
      drops.remove(this);
    }
  }
  
  void hitDetect(){
    for(int i=0;i<bullets.size();i++){
      if(Math.sqrt(Math.pow(posX-bullets.get(i).posX,2)+Math.pow(posY-bullets.get(i).posY,2)) < (this.size+bullets.get(i).size)/2){
        Hp=Hp-bullets.get(i).dmg;
        if(bullets.get(i).oneHit)bullets.remove(i);
      }
    }
  }
}
