class Bomb extends Bullet{
  
  int timer;
  int exploTimer;
  
  Bomb(float x, float y,float sx, float sy){
    super(x,y,sx,sy,90/screenSize,0);
    oneHit=false;
    timer=7*60;
    dmg=0;
    exploTimer=-1;
  }
  
  void draw(){
    if(timer<=0 && exploTimer<0){
      exploTimer=6;
      dmg=7;
      size=900/screenSize;
    }else timer--;
    
    if(exploTimer>0){
      fill(#FFFFFF);
      ellipse(posX,posY,size,size);
      exploTimer--;
      if(exploTimer<=0)bullets.remove(this);
    }else{
      
    posX=posX+speedX;
    posY=posY+speedY;
    fill(0);
    image(BombI,posX,posY);
    fill(#ED0707);
    textSize(20);
    text((int)(timer/60),posX,posY-2);
    if(posX>800-size/2 && speedX>0 || posX<size/2 && speedX<0 )speedX=speedX*-1;
    if(posY<size/2)speedY=speedY*-1;
    if(posY>=710 && posY<=710+speedY && posX<canon1.posX+25 && posX>canon1.posX-25 && speedY>0)speedY=speedY*-1;
    else{
      if(posY>=710 && posY<=710+size/2+speedY && posX<canon1.posX+25+size/2 && posX>canon1.posX-25-size/2 && speedY>0)speedY=speedY*-1;
    }
    if(posY>800+size){
      bullets.remove(this);
    }
    
    }
  }
}
