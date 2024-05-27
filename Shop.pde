class Shop{
  boolean inShop=false;
  int ASUp=0;
  int MSUp=0;
  int RDUp=0;
  int BBUp=0;
  int BDUp=0;
  int PKUp=0;
  int PMUp=0;
  int BBulletsUp=0;
  int GlowDUp=0;
  int TrinityUp=0;
  int ShowerUp=0;
  int BombsUp=0;
  int HaloDUp=0;
  int DMDHPUp=0;
  
  int ASUpP=50;
  int MSUpP=60;
  int RDUpP=70;
  int PKUpP=80;
  int BBUpP=260;
  int ShowerUpP=400;
  int BDUpP=520;
  int BBulletsUpP=640;
  int PMUpP=1100;
  int TrinityUpP=6600;
  int GlowDUpP=11000;
  int BombsUpP=55000;
  int HaloDUpP=120000;
  int DMDHPUpP=500500;
  
  void draw(){
    if(inShop){
      drawShop1();
    }
      
    if(mouseX<150 && mouseX>10){
      fill(#C6FFB9);
      rect(0,400,300,900);
    
      fill(#FFC4C5);
      rect(75,50,100,80);
      fill(0);
      textSize(20);
      text("continue",75,50);
      if(mousePressed && mouseX<125&&25<mouseX && mouseY<90&&10<mouseY && frames<=0){
        inShop=false;
        savemenu.info=false;
        frames=15;
        fill(0);
        rect(75,50,100,80);
        fill(#FFC4C5);
        text("continue",75,50);
      } 
      
      fill(#FFC4C5);
      rect(75,150,100,80);
      fill(0);
      textSize(20);
      text("shop 1",75,150);
      if(mousePressed && mouseX<125&&25<mouseX && mouseY<190&&110<mouseY && frames<=0){
        inShop=true;
        frames=15;
        fill(0);
        rect(75,150,100,80);
        fill(#FFC4C5);
        text("shop 1",75,150);
      }
    }
  }
  
  void drawShop1(){
    background(#C6EFFF);
    
    textSize(22);
    fill(0);
    textAlign(LEFT,CENTER);
    text((int)points,20,20);
    textAlign(CENTER,CENTER);
    
    fill(#C6EFFF);
    rect(220,50,64,32);
    fill(0);
    textSize(16);
    textAlign(RIGHT,CENTER);
    text("attackspeed +20%",180,50);
    textAlign(CENTER,CENTER);
    textSize(10);
    fill(#939393);
    if(points>=(int)Math.pow(2,ASUp)*ASUpP)fill(0);
    text((int)Math.pow(2,ASUp)*ASUpP,220,50);
    if(mousePressed && mouseX<252&&188<mouseX && mouseY<66&&36<mouseY && frames<=0 && points>=(int)Math.pow(2,ASUp)*ASUpP){
      frames=15;
      points=points-(int)Math.pow(2,ASUp)*ASUpP;
      canon1.attackspeed=canon1.attackspeed*1.2;
      ASUp++;
      table.getRow(1).setInt("value",ASUp);
      fill(#FFFFFF);
      rect(220,50,64,32);
      textSize(16);
      textAlign(RIGHT,CENTER);
      text("attackspeed +10%",180,50);
      textAlign(CENTER,CENTER);
      textSize(10);
      text((int)Math.pow(2,ASUp)*ASUpP,220,50);
    }
    
    fill(#C6EFFF);
    rect(220,100,64,32);
    fill(0);
    textSize(16);
    textAlign(RIGHT,CENTER);
    text("mobility +20%",180,100);
    textAlign(CENTER,CENTER);
    textSize(10);
    fill(#939393);
    if(points>=(int)Math.pow(2,MSUp)*MSUpP)fill(0);
    text((int)Math.pow(2,MSUp)*MSUpP,220,100);
    if(mousePressed && mouseX<252&&188<mouseX && mouseY<116&&86<mouseY && frames<=0 && points>=(int)Math.pow(2,MSUp)*MSUpP){
      frames=15;
      points=points-(int)Math.pow(2,MSUp)*MSUpP;
      canon1.speed=canon1.speed*1.2;
      MSUp++;
      table.getRow(2).setInt("value",MSUp);
      fill(#FFFFFF);
      rect(220,150,64,32);
      textSize(16);
      textAlign(RIGHT,CENTER);
      text("mobility +20%",180,100);
      textAlign(CENTER,CENTER);
      textSize(10);
      text((int)Math.pow(2,MSUp)*MSUpP,220,100);
    }
    
    fill(#C6EFFF);
    rect(220,150,64,32);
    fill(0);
    textSize(16);
    textAlign(RIGHT,CENTER);
    text("raindrops +20%",180,150);
    textAlign(CENTER,CENTER);
    textSize(10);
    fill(#939393);
    if(points>=(int)Math.pow(2,RDUp)*RDUpP)fill(0);
    text((int)Math.pow(2,RDUp)*RDUpP,220,150);
    if(mousePressed && mouseX<252&&188<mouseX && mouseY<166&&136<mouseY && frames<=0 && points>=(int)Math.pow(2,RDUp)*RDUpP){
      frames=15;
      points=points-(int)Math.pow(2,RDUp)*RDUpP;
      dropspeed=dropspeed*1.2;
      RDUp++;
      table.getRow(3).setInt("value",RDUp);
      fill(#FFFFFF);
      rect(220,150,64,32);
      textSize(16);
      textAlign(RIGHT,CENTER);
      text("raindrops +10%",180,150);
      textAlign(CENTER,CENTER);
      textSize(10);
      text((int)Math.pow(2,RDUp)*RDUpP,220,150);
    }
    
    fill(#C6EFFF);
    rect(220,250,64,32);
    fill(0);
    textSize(16);
    textAlign(RIGHT,CENTER);
    text("beachballs",180,250);
    textAlign(CENTER,CENTER);
    textSize(10);
    fill(#939393);
    if(points>=(int)Math.pow(5,BBUp)*BBUpP)fill(0);
    text((int)Math.pow(5,BBUp)*BBUpP,220,250);
    if(mousePressed && mouseX<252&&188<mouseX && mouseY<266&&236<mouseY && frames<=0 && points>=(int)Math.pow(5,BBUp)*BBUpP){
      frames=15;
      points=points-(int)Math.pow(5,BBUp)*BBUpP;
      canon1.ballAS=canon1.ballAS*1.5;
      BBUp++;
      table.getRow(4).setInt("value",BBUp);
      fill(#FFFFFF);
      rect(220,250,64,32);
      textSize(16);
      textAlign(RIGHT,CENTER);
      text("raindrops +10%",180,250);
      textAlign(CENTER,CENTER);
      textSize(10);
      text((int)Math.pow(5,BBUp)*BBUpP,220,250);
    }
    
    fill(#C6EFFF);
    rect(220,350,64,32);
    fill(0);
    textSize(16);
    textAlign(RIGHT,CENTER);
    text("Big Drops",180,350);
    textAlign(CENTER,CENTER);
    textSize(10);
    fill(#939393);
    if(points>=(int)Math.pow(5,BDUp)*BDUpP)fill(0);
    text((int)Math.pow(5,BDUp)*BDUpP,220,350);
    if(mousePressed && mouseX<252&&188<mouseX && mouseY<366&&336<mouseY && frames<=0 && points>=(int)Math.pow(5,BDUp)*BDUpP){
      frames=15;
      points=points-(int)Math.pow(5,BDUp)*BDUpP;
      BigDspeed=BigDspeed*1.5;
      BDUp++;
      table.getRow(5).setInt("value",BDUp);
      fill(#FFFFFF);
      rect(220,350,64,32);
      textSize(16);
      textAlign(RIGHT,CENTER);
      text("Big Drops",180,350);
      textAlign(CENTER,CENTER);
      textSize(10);
      text((int)Math.pow(5,BDUp)*BDUpP,220,350);
    }
    
    fill(#C6EFFF);
    rect(220,200,64,32);
    fill(0);
    textSize(16);
    textAlign(RIGHT,CENTER);
    text("points +20%",180,200);
    textAlign(CENTER,CENTER);
    textSize(10);
    fill(#939393);
    if(points>=(int)Math.pow(2,PKUp)*PKUpP)fill(0);
    text((int)Math.pow(2,PKUp)*PKUpP,220,200);
    if(mousePressed && mouseX<252&&188<mouseX && mouseY<216&&186<mouseY && frames<=0 && points>=(int)Math.pow(2,PKUp)*PKUpP){
      frames=15;
      points=points-(int)Math.pow(2,PKUp)*PKUpP;
      pointsPKill=pointsPKill*1.2;
      PKUp++;
      table.getRow(6).setInt("value",PKUp);
      fill(#FFFFFF);
      rect(220,200,64,32);
      textSize(16);
      textAlign(RIGHT,CENTER);
      text("points +20%",180,200);
      textAlign(CENTER,CENTER);
      textSize(10);
      text((int)Math.pow(2,PKUp)*PKUpP,220,200);
    }
    
    fill(#C6EFFF);
    rect(220,450,64,32);
    fill(0);
    textSize(16);
    textAlign(RIGHT,CENTER);
    text("lost drops +20%",180,450);
    textAlign(CENTER,CENTER);
    textSize(10);
    fill(#939393);
    if(points>=(int)Math.pow(5,PMUp)*PMUpP)fill(0);
    if(PMUp<=1)text((int)Math.pow(5,PMUp)*PMUpP,220,450);
    else text("max",220,450);
    if(mousePressed && mouseX<252&&188<mouseX && mouseY<466&&436<mouseY && frames<=0 && points>=(int)Math.pow(5,PMUp)*PMUpP && PMUp<=1){
      frames=15;
      points=points-(int)Math.pow(5,PMUp)*PMUpP;
      PMUp++;
      table.getRow(7).setInt("value",PMUp);
      fill(#FFFFFF);
      rect(220,450,64,32);
      textSize(16);
      textAlign(RIGHT,CENTER);
      text("lost drops +20%",180,450);
      textAlign(CENTER,CENTER);
      textSize(10);
      text((int)Math.pow(5,PMUp)*PMUpP,220,450);
    }
    
    fill(#C6EFFF);
    rect(220,400,64,32);
    fill(0);
    textSize(16);
    textAlign(RIGHT,CENTER);
    text("bigger Bullets",180,400);
    textAlign(CENTER,CENTER);
    textSize(10);
    fill(#939393);
    if(points>=(int)Math.pow(5,BBulletsUp)*BBulletsUpP)fill(0);
    if(BBulletsUp<=6)text((int)Math.pow(5,BBulletsUp)*BBulletsUpP,220,400);
    else text("max",220,400);
    if(mousePressed && mouseX<252&&188<mouseX && mouseY<416&&386<mouseY && frames<=0 && points>=(int)Math.pow(5,BBulletsUp)*BBulletsUpP && BBulletsUp<=6){
      frames=15;
      points=points-(int)Math.pow(5,BBulletsUp)*BBulletsUpP;
      canon1.bulletSize=canon1.bulletSize*1.2;
      BBulletsUp++;
      table.getRow(8).setInt("value",BBulletsUp);
      fill(#FFFFFF);
      rect(220,400,64,32);
      textSize(16);
      textAlign(RIGHT,CENTER);
      text("bigger Bullets",180,400);
      textAlign(CENTER,CENTER);
      textSize(10);
      text((int)Math.pow(5,BBulletsUp)*BBulletsUpP,220,400);
    }
    
    fill(#C6EFFF);
    rect(220,550,64,32);
    fill(0);
    textSize(16);
    textAlign(RIGHT,CENTER);
    text("glowing Drops",180,550);
    textAlign(CENTER,CENTER);
    textSize(10);
    fill(#939393);
    if(points>=(int)Math.pow(5,GlowDUp)*GlowDUpP)fill(0);
    text((int)Math.pow(5,GlowDUp)*GlowDUpP,220,550);
    if(mousePressed && mouseX<252&&188<mouseX && mouseY<566&&536<mouseY && frames<=0 && points>=(int)Math.pow(5,GlowDUp)*GlowDUpP){
      frames=15;
      points=points-(int)Math.pow(5,GlowDUp)*GlowDUpP;
      GlowDspeed=GlowDspeed*1.5;
      GlowDUp++;
      table.getRow(9).setInt("value",GlowDUp);
      fill(#FFFFFF);
      rect(220,550,64,32);
      textSize(16);
      textAlign(RIGHT,CENTER);
      text("glowing Drops",180,550);
      textAlign(CENTER,CENTER);
      textSize(10);
      text((int)Math.pow(5,GlowDUp)*GlowDUpP,220,550);
    }
    
    fill(#C6EFFF);
    rect(220,500,64,32);
    fill(0);
    textSize(16);
    textAlign(RIGHT,CENTER);
    text("trinity shot",180,500);
    textAlign(CENTER,CENTER);
    textSize(10);
    fill(#939393);
    if(points>=(int)Math.pow(5,TrinityUp)*TrinityUpP)fill(0);
    if(TrinityUp<=3)text((int)Math.pow(5,TrinityUp)*TrinityUpP,220,500);
    else text("max",220,500);
    if(mousePressed && mouseX<252&&188<mouseX && mouseY<516&&486<mouseY && frames<=0 && points>=(int)Math.pow(5,TrinityUp)*TrinityUpP && TrinityUp<=3){
      frames=15;
      points=points-(int)Math.pow(5,TrinityUp)*TrinityUpP;
      canon1.trinityChance=canon1.trinityChance+25;
      TrinityUp++;
      table.getRow(10).setInt("value",TrinityUp);
      fill(#FFFFFF);
      rect(220,500,64,32);
      textSize(16);
      textAlign(RIGHT,CENTER);
      text("trinity shot",180,500);
      textAlign(CENTER,CENTER);
      textSize(10);
      text((int)Math.pow(5,TrinityUp)*TrinityUpP,220,500);
    }
    
    fill(#C6EFFF);
    rect(220,300,64,32);
    fill(0);
    textSize(16);
    textAlign(RIGHT,CENTER);
    text("trippledrop Mode",180,300);
    textAlign(CENTER,CENTER);
    textSize(10);
    fill(#939393);
    if(points>=(int)Math.pow(5,ShowerUp)*ShowerUpP)fill(0);
    if(ShowerUp<=4)text((int)Math.pow(5,ShowerUp)*ShowerUpP,220,300);
    else text("max",220,300);
    if(mousePressed && mouseX<252&&188<mouseX && mouseY<316&&286<mouseY && frames<=0 && points>=(int)Math.pow(5,ShowerUp)*ShowerUpP && ShowerUp<=4){
      frames=15;
      points=points-(int)Math.pow(5,ShowerUp)*ShowerUpP;
      ShowerTime=3.5+1.5*shop.ShowerUp;
      ShowerUp++;
      table.getRow(11).setInt("value",ShowerUp);
      fill(#FFFFFF);
      rect(220,300,64,32);
      textSize(16);
      textAlign(RIGHT,CENTER);
      text("trippledrop Mode",180,300);
      textAlign(CENTER,CENTER);
      textSize(10);
      text((int)Math.pow(5,ShowerUp)*ShowerUpP,220,300);
    }
    
    fill(#C6EFFF);
    rect(220,600,64,32);
    fill(0);
    textSize(16);
    textAlign(RIGHT,CENTER);
    text("BOMBS",180,600);
    textAlign(CENTER,CENTER);
    textSize(10);
    fill(#939393);
    if(points>=(int)Math.pow(5,BombsUp)*BombsUpP)fill(0);
    text((int)Math.pow(5,BombsUp)*BombsUpP,220,600);
    if(mousePressed && mouseX<252&&188<mouseX && mouseY<616&&586<mouseY && frames<=0 && points>=(int)Math.pow(5,BombsUp)*BombsUpP){
      frames=15;
      points=points-(int)Math.pow(5,BombsUp)*BombsUpP;
      canon1.bombAS=canon1.bombAS*1.5;
      BombsUp++;
      table.getRow(12).setInt("value",BombsUp);
      fill(#FFFFFF);
      rect(220,600,64,32);
      textSize(16);
      textAlign(RIGHT,CENTER);
      text("BOMBS",180,600);
      textAlign(CENTER,CENTER);
      textSize(10);
      text((int)Math.pow(5,BombsUp)*BombsUpP,220,600);
    }
    
    fill(#C6EFFF);
    rect(220,650,64,32);
    fill(0);
    textSize(16);
    textAlign(RIGHT,CENTER);
    text("Halo Drops",180,650);
    textAlign(CENTER,CENTER);
    textSize(10);
    fill(#939393);
    if(points>=(int)Math.pow(5,HaloDUp)*HaloDUpP)fill(0);
    text((int)Math.pow(5,HaloDUp)*HaloDUpP,220,650);
    if(mousePressed && mouseX<252&&188<mouseX && mouseY<666&&636<mouseY && frames<=0 && points>=(int)Math.pow(5,HaloDUp)*HaloDUpP){
      frames=15;
      points=points-(int)Math.pow(5,HaloDUp)*HaloDUpP;
      HaloSpeed=HaloSpeed*1.5;
      HaloDUp++;
      table.getRow(13).setInt("value",HaloDUp);
      fill(#FFFFFF);
      rect(220,650,64,32);
      textSize(16);
      textAlign(RIGHT,CENTER);
      text("Halo Drops",180,650);
      textAlign(CENTER,CENTER);
      textSize(10);
      text((int)Math.pow(5,HaloDUp)*HaloDUpP,220,650);
    }
    
    fill(#C6EFFF);
    rect(220,700,64,32);
    fill(0);
    textSize(16);
    textAlign(RIGHT,CENTER);
    text("double money mode",180,700);
    textAlign(CENTER,CENTER);
    textSize(10);
    fill(#939393);
    if(points>=(int)Math.pow(5,DMDHPUp)*DMDHPUpP)fill(0);
    if(DMDHPUp<=0)text((int)Math.pow(5,DMDHPUp)*DMDHPUpP,220,700);
    else text("max",220,700);
    if(mousePressed && mouseX<252&&188<mouseX && mouseY<716&&686<mouseY && frames<=0 && points>=(int)Math.pow(5,DMDHPUp)*DMDHPUpP && DMDHPUp<=0){
      frames=15;
      points=points-(int)Math.pow(5,DMDHPUp)*DMDHPUpP;
      DMDHPUp++;
      table.getRow(14).setInt("value",DMDHPUp);
      fill(#FFFFFF);
      rect(220,700,64,32);
      textSize(16);
      textAlign(RIGHT,CENTER);
      text("Halo Drops",180,700);
      textAlign(CENTER,CENTER);
      textSize(10);
      text((int)Math.pow(5,DMDHPUp)*DMDHPUpP,220,700);
    }
  }
}
