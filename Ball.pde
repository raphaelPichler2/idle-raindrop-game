class Ball extends Bullet{
  
  Ball(float x, float y,float sx, float sy){
    super(x,y,sx,sy,40/screenSize,0);
    oneHit=false;
  }
  
  void draw(){
    posX=posX+speedX;
    posY=posY+speedY;
    fill(#FF0808);
    image(ballI,posX,posY,size,size);
    if(posX>800-size/2 && speedX>0 || posX<size/2 && speedX<0 )speedX=speedX*-1;
    if(posY<size/2)speedY=speedY*-1;
    if(posY>=710 && posY<=710+speedY && posX<canon1.posX+25 && posX>canon1.posX-25 && speedY>0){
      if(speedX<0)speedX=random(-12,1);
      else speedX=random(1,12);
      speedY=-8;
      float param = 10 / (float)Math.sqrt(Math.pow(speedX,2)+Math.pow(speedY,2));
      speedX=speedX*param;
      speedY=speedY*param;
    }
    else{
      if(posY>=710 && posY<=710+size/2+speedY && posX<canon1.posX+25+size/2 && posX>canon1.posX-25-size/2 && speedY>0){
        if(speedX<0)speedX=random(-12,1);
        else speedX=random(1,12);
        speedY=-8;
        float param = 10 / (float)Math.sqrt(Math.pow(speedX,2)+Math.pow(speedY,2));
        speedX=speedX*param;
        speedY=speedY*param;
      }
    }
    if(posY>800+size){
      bullets.remove(this);
    }
  }
}
