class HaloDrop extends Drops{
  
  float speedX;
  float speedY;
  
  ArrayList<Bullet> deactiveBullets=new ArrayList();
  
  HaloDrop(){
    super();
    size=160;
    speedX=6/screenSize;
    speedY=2.5/screenSize;
    posY=-size;
    posX=random(0,800);
    Hp=80;
    pointBonus=6050;
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
    posX=posX+speedX;
    posY=posY+speedY;
    if(posX>800-size/2 && speedX>0 || posX<size/2 && speedX<0 )speedX=speedX*-1;
    size=(160-80+1*Hp)/screenSize;
    fill(#55A8FF);
    image(HaloI,posX,posY,size,size);
    hitDetect();
    if(posY>800+size/2){
      if(shop.PMUp>0)points=points+(int)(0.2*(float)Math.pow(1.5,shop.PMUp-1)*pointBonus*pointsPKill);
      drops.remove(this);
    }
  }
  
  void hitDetect(){
    for(int i=0;i<bullets.size();i++){
      if(deactiveBullets.contains(bullets.get(i)) && Math.sqrt(Math.pow(posX-bullets.get(i).posX,2)+Math.pow(posY-bullets.get(i).posY,2)) > 1+(this.size+bullets.get(i).size)/2){
        deactiveBullets.remove(bullets.get(i));
      }
      
      if(Math.sqrt(Math.pow(posX-bullets.get(i).posX,2)+Math.pow(posY-bullets.get(i).posY,2)) <= (this.size+bullets.get(i).size)/2 && !deactiveBullets.contains(bullets.get(i))){
        if(!(bullets.get(i) instanceof Bomb ))deactiveBullets.add(bullets.get(i));
        Hp=Hp-bullets.get(i).dmg;
        if(bullets.get(i).oneHit)bullets.remove(i);
      }
    }
  }
  
}
