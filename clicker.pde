
long points;
float screenSize=1;
float pointsPKill;
float dropspeed;
float nextDrop;
float BigDspeed;
float nextBigD;
float nextGlowD;
float GlowDspeed;
float nextShower=20*60;
boolean showering=false;
float ShowerTime;
float nextHalo;
float HaloSpeed;
boolean doubleMode;

Table table;

int frames=0;

canon canon1 = new canon();
Boolean[] keys= new Boolean[3];
ArrayList<Bullet> bullets=new ArrayList();
ArrayList<Drops> drops =new ArrayList();
SaceMenu savemenu = new SaceMenu();
Shop shop = new Shop();

PImage canonI;
PImage dropI;
PImage ballI;
PImage bigDropI;
PImage bulletI;
PImage glowDropI;
PImage backgroundI;
PImage showerI;
PImage BombI;
PImage HaloI;

void setup(){
  size(800,800);
  rectMode(CENTER);
  textAlign(CENTER,CENTER);
  imageMode(CENTER);
  table= loadTable("new.csv","header,csv");
  points=table.getInt(0,"value");
  shop.ASUp=table.getInt(1,"value");
  shop.MSUp=table.getInt(2,"value");
  shop.RDUp=table.getInt(3,"value");
  shop.BBUp=table.getInt(4,"value");
  shop.BDUp=table.getInt(5,"value");
  shop.PKUp=table.getInt(6,"value");
  shop.PMUp=table.getInt(7,"value");
  shop.BBulletsUp=table.getInt(8,"value");
  shop.GlowDUp=table.getInt(9,"value");
  shop.TrinityUp=table.getInt(10,"value");
  shop.ShowerUp=table.getInt(11,"value");
  shop.BombsUp=table.getInt(12,"value");
  shop.HaloDUp=table.getInt(13,"value");
  shop.DMDHPUp=table.getInt(14,"value");
  
  canon1.attackspeed=80*(float)Math.pow(1.2,shop.ASUp);
  canon1.speed=5*(float)Math.pow(1.2,shop.MSUp);
  canon1.ballAS=14*(float)Math.pow(1.6,shop.BBUp);
  canon1.bulletSize=20*(float)Math.pow(1.2,shop.BBulletsUp);
  canon1.trinityChance=25*shop.TrinityUp;
  canon1.bombAS=4*(float)Math.pow(1.6,shop.BombsUp);
  
  pointsPKill=(float)(1*Math.pow(1.2,shop.PKUp));
  dropspeed=50*(float)Math.pow(1.2,shop.RDUp);
  nextDrop=60;
  BigDspeed=4*(float)Math.pow(1.6,shop.BDUp);
  nextBigD=120;
  GlowDspeed=2*(float)Math.pow(1.6,shop.GlowDUp);
  nextGlowD=20*60;
  ShowerTime=3.5+1.5*shop.ShowerUp;
  HaloSpeed=2*(float)Math.pow(1.6,shop.HaloDUp);
  nextHalo=3600/2;
  
  keys[0]=false;
  keys[1]=false;
  keys[2]=false;
  
  canonI=loadImage("canon.png");
  dropI=loadImage("Drop.png");
  ballI=loadImage("ball.png");
  bigDropI=loadImage("bigDrop.png");
  bulletI=loadImage("Bullet.png");
  glowDropI=loadImage("glowDrop.png");
  backgroundI=loadImage("background.png");
  showerI=loadImage("shower.png");
  BombI=loadImage("Bomb.png");
  HaloI=loadImage("Halo.png");
}
void draw(){
  image(backgroundI,400,400);
  if(showering){
    image(showerI,400,400);
  }
  if(frames>0)frames--;
  
  ArrayList<Bullet> bullets1=bullets;
  for(int i=0; i<bullets1.size();i++){
    bullets1.get(i).draw();
  }
  if(shop.ShowerUp>0){
    if(nextShower<=0){
      showering=!showering;
      if(showering){
        nextShower=ShowerTime*60;
      }else nextShower=(16+random(0,28))*60;
    }else nextShower--;
  }
  
  newDrops();
  ArrayList<Drops> drops1=drops;
  for(int i=0;i<drops1.size();i++){
    drops1.get(i).draw();
  }
  
  canon1.draw();
  
  textSize(22);
  fill(0);
  textAlign(LEFT,CENTER);
  text((int)points,20,30);
  textAlign(CENTER,CENTER);
  
  savemenu.draw();
  shop.draw();
  table.getRow(0).setLong("value",points);
}
void newDrops(){
  if(nextDrop<=0){
    Drops drop1=new Drops();
    nextDrop=3600/dropspeed;
    if(showering)nextDrop=nextDrop/3;
  }else{
    nextDrop--;
  }
  
  if(nextBigD<=0 && shop.BDUp>0){
    BigDrop bigDrop1=new BigDrop();
    nextBigD=3600/BigDspeed;
    if(showering)nextBigD=nextBigD/3;
  }else{
    nextBigD--;
  }
  
  if(nextGlowD<=0 && shop.GlowDUp>0){
    int r=(int)random(10000);
    for(int i=0;i<20;i++){
      GlowBullet glowDrop1=new GlowBullet(20+40*i,r);
    }
    nextGlowD=3600/GlowDspeed;
    if(showering)nextGlowD=nextGlowD/3;
  }else{
    nextGlowD--;
  }
  
  if(nextHalo<=0 && shop.HaloDUp>0){
    HaloDrop glowDrop1=new HaloDrop();
    nextHalo=3600/HaloSpeed;
    if(showering)nextHalo=nextHalo/3;
  }else{
    nextHalo--;
  }
}

void keyPressed(){
  if(key=='a')keys[0]=true;
  if(key=='d')keys[1]=true;
  if(key==' ')keys[2]=true;
}
void keyReleased(){
  if(key=='a')keys[0]=false;
  if(key=='d')keys[1]=false;
  if(key==' ')keys[2]=false;
}
