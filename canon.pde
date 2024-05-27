class canon{
  
  float posX;
  float speed;
  
  float nextShot;
  float attackspeed;
  float bulletSize=20;
  float trinityChance=0;
  
  float nextBall=20;
  float ballAS=5;
  
  float nextBomb=3600/4;
  float bombAS=4;
  
  canon(){
    posX=400;
    speed=5;
    nextShot=20;
    attackspeed=80;
  }
  void draw(){
    if(keys[0] && posX>0)posX=posX-speed/screenSize;
    if(keys[1] && posX<800)posX=posX+speed/screenSize;
    fill(#FDFFE0);
    image(canonI,posX,800-40/screenSize,50/screenSize,50/screenSize);
    shoot();
  }
  
  void shoot(){
    if(nextShot<=0){
      Bullet bullet=new Bullet(posX,800-40/screenSize,0,-14,bulletSize,0);
      if(random(100)<trinityChance){
        Bullet bullet2=new Bullet(posX,800-40/screenSize,10,-10,bulletSize,45);
        Bullet bullet3=new Bullet(posX,800-40/screenSize,-10,-10,bulletSize,-45);
      }
      nextShot=3600/attackspeed;
    }else{
      nextShot--;
    }
    
    if(nextBall<=0 && shop.BBUp>0){
      float ballSX=random(-12,12);
      float ballSY=-8;
      float param=10/ (float)Math.sqrt(Math.pow(ballSX,2)+Math.pow(ballSY,2));
      
      Ball ball=new Ball(posX,800-40/screenSize,ballSX*param,ballSY*param);
      nextBall=3600/ballAS;
    }
    if(shop.BBUp>0)nextBall--;
    
    if(nextBomb<=0 && shop.BombsUp>0){
      float bombSX=random(-12,12);
      float bombSY=-8;
      float param=10/ (float)Math.sqrt(Math.pow(bombSX,2)+Math.pow(bombSY,2));
      
      Bomb bomb1=new Bomb(posX,800-40/screenSize,bombSX*param,bombSY*param);
      nextBomb=3600/bombAS;
    }
    if(shop.BBUp>0)nextBomb--;
  }
}
