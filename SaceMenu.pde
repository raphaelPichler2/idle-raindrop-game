class SaceMenu{
  
  boolean info;
  
  void draw(){
    if(mouseX>650 && mouseX<790){
      fill(#C6FFB9);
      rect(800,400,300,900);
      
      fill(#FFC4C5);
      rect(725,50,100,80);
      fill(0);
      textSize(20);
      text("save",725,50);
      if(mousePressed && mouseX<775&&675<mouseX && mouseY<90&&10<mouseY){
        saveTable(table, "data/new.csv");
        fill(0);
        rect(725,50,100,80);
        fill(#FFC4C5);
        text("save",725,50);
      }
      
      fill(#FFC4C5);
      rect(725,150,100,80);
      fill(0);
      textSize(20);
      text("restart",725,150);
      if(mousePressed && mouseX<775&&675<mouseX && mouseY<190&&110<mouseY){
        points=0;
        table.getRow(0).setLong("value",points);
        shop.ASUp=0;
        canon1.attackspeed=80;
        table.getRow(1).setInt("value",shop.ASUp);
        shop.MSUp=0;
        canon1.speed=5;
        table.getRow(2).setInt("value",shop.MSUp);
        shop.RDUp=0;
        dropspeed=50;
        table.getRow(3).setInt("value",shop.RDUp);
        shop.BBUp=0;
        canon1.ballAS=14;
        table.getRow(4).setInt("value",shop.BBUp);
        shop.BDUp=0;
        BigDspeed=4;
        table.getRow(5).setInt("value",shop.BDUp);
        shop.PKUp=0;
        pointsPKill=1;
        table.getRow(6).setInt("value",shop.PKUp);
        shop.PMUp=0;
        table.getRow(7).setInt("value",shop.PKUp);
        shop.BBulletsUp=0;
        canon1.bulletSize=20;
        table.getRow(8).setInt("value",shop.PKUp);
        shop.GlowDUp=0;
        GlowDspeed=2;
        table.getRow(9).setInt("value",shop.GlowDUp);
        shop.TrinityUp=0;
        canon1.trinityChance=0;
        table.getRow(10).setInt("value",shop.TrinityUp);
        shop.ShowerUp=0;
        ShowerTime=0;
        table.getRow(11).setInt("value",shop.ShowerUp);
        shop.BombsUp=0;
        canon1.bombAS=3;
        table.getRow(12).setInt("value",shop.BombsUp);
        shop.HaloDUp=0;
        HaloSpeed=2;
        table.getRow(13).setInt("value",shop.HaloDUp);
        
        fill(0);
        rect(725,150,100,80);
        fill(#FFC4C5);
        text("restart",725,150);
      }
      
      fill(#FFC4C5);
      rect(725,250,100,80);
      fill(0);
      textSize(20);
      text("stats",725,250);
      if(mousePressed && mouseX<775&&675<mouseX && mouseY<290&&210<mouseY){
        info=true;
        shop.inShop=false;
      }
      
      if(shop.DMDHPUp>0){
        fill(#FFC4C5);
        rect(725,350,100,80);
        fill(0);
        textSize(14);
        if(doubleMode){text("Double Mode:",725,340);text("on",725,360);
        }else{ text("Double Mode:",725,340);text("off",725,360);}
        if(mousePressed && mouseX<775&&675<mouseX && mouseY<390&&310<mouseY && frames<=0){
          doubleMode=!doubleMode;
          frames=15;
        }
      }
      
    }
    if(info)drawInfo();
  }
  
  void drawInfo(){
    background(#C6EFFF);
    
    textSize(22);
    fill(0);
    textAlign(LEFT,CENTER);
    text(points,20,20);
    textAlign(RIGHT,CENTER);
    
    text("attackspeed: "+canon1.attackspeed,400,50);
    text("bulletsize: "+ canon1.bulletSize,400,100);
    text("mobility: "+ canon1.speed,400,150);
    text("money per drop: "+ pointsPKill*5,400,200);
    text("trinity chance: "+ canon1.trinityChance+" %",400,250);
    
    textAlign(CENTER,CENTER);
  }
}
