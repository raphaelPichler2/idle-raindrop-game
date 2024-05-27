class Drops{
  
  float posX;
  float posY;
  float pointBonus;
  float speed;
  float size;
  int Hp;
  
  Drops(){
    size=30/screenSize;
    posY=-size;
    posX=random(0,800);
    pointBonus=5;
    speed=7/screenSize;
    Hp=1;
    drops.add(this);
    if(doubleMode){
      Hp=Hp*2;
      pointBonus=pointBonus*2;
    }
  }
  
  void draw(){
    if(Hp<=0){
      drops.remove(this);
      points=points+(int)(pointBonus*pointsPKill);
    }
    posY=posY+speed;
    fill(#52E4FF);
    image(dropI,posX,posY,size,size);
    hitDetect();
    if(posY>800+size/2){
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
