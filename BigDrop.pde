class BigDrop extends Drops{

  ArrayList<Bullet> deactiveBullets=new ArrayList();
  
  BigDrop(){
    super();
    size=60/screenSize;
    speed=3/screenSize;
    posY=-size;
    posX=random(0,800);
    Hp=10;
    pointBonus=55;
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
    size=(60-40+4*Hp)/screenSize;
    fill(#55A8FF);
    image(bigDropI,posX,posY,size,size);
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
