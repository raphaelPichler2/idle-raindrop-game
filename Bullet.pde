class Bullet{
  
  float posX;
  float posY;
  float speedX;
  float speedY;
  float size;
  boolean oneHit;
  float rotate;
  int dmg;
  
  Bullet(float x, float y, float speedX, float speedY,float size,float rotate){
    posX=x;
    posY=y;
    this.speedX=speedX/screenSize;
    this.speedY=speedY/screenSize;
    this.size=size/screenSize;
    this.rotate=rotate;
    oneHit=true;
    dmg=1;
    bullets.add(this);
  }
  
  void draw(){
    posX=posX+speedX;
    posY=posY+speedY;
    pushMatrix();
    translate(posX,posY);
    rotate(radians(rotate));
    fill(#FDFFE0);
    image(bulletI,0,0,size,size);
    popMatrix();
    if(posX>800+size || posX<0-size || posY<0-size){
      bullets.remove(this);
    }
  }
}
