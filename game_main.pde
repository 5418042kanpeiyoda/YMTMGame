Start st = new Start();
SelectLevel sl = new SelectLevel();
End e = new End();
int[] level = {2,5};
int item = 84;
int col = 10;
int obj = 6;
int verticulitem = 7;
int horizunitem = 12;
Game g1_1 = new Game1(level, 5, 8, col, obj);
Game g1_2 = new Game1(level, 6, 10, col, obj);
Game g1_3 = new Game1(level, 7, 12, col, obj);
Game g2_1 = new Game2(level, 5, 8, col, obj);
Game g2_2 = new Game2(level, 6, 10, col, obj);
Game g2_3 = new Game2(level, 7, 12, col, obj);
Game g3_1 = new Game3(level, 5, 8, col, obj);
Game g3_2 = new Game3(level, 6, 10, col, obj);
Game g3_3 = new Game3(level, 7, 12, col, obj);
//初期画面の判定
int len=15;
boolean[] clickJudge = new boolean[len];
//画像を引き継ぐための変数
PImage img ;

void setup(){
  size(1200,900);
  //画像の読み込み
  img = loadImage("watermark.jpg");
  //円と四角形の座標を中心に選択
  ellipseMode(CENTER);   
  rectMode(CENTER);
  textAlign(CENTER,CENTER);
  //日本語の文章を打つための文体の設定
  PFont font = createFont("MS Gothic",50);
  textFont (font);
  for(int i=0;i<len;i++){
    clickJudge[i]=false;
  }
}

void draw(){
  if(clickJudge[0]!=true){
    st.display();
    st.example();
  }else if(clickJudge[1]!=true){
    sl.display();
  }else if(clickJudge[12]!=true){
    for(int i=0;i<sl.rxr.length;i++){
      if(0<=i&&i<=2&&clickJudge[i+2]==true){
        if(i==0){
          g1_1.mainGame();
          if(g1_1.clear){
            e.clearTime = 60-(g1_1.timeLimit-g1_1.cleartime);
            e.clear_Judge = true;
            clickJudge[12]=true;
          }else if(g1_1.countDown<0){
            e.clear_Judge = false;
            clickJudge[12]=true;
          }
        }else if(i==1){
          g1_2.mainGame();
          if(g1_2.clear){
            e.clearTime = 60-(g1_2.timeLimit-g1_2.cleartime);
            e.clear_Judge = true;
            clickJudge[12]=true;
          }else if(g1_2.countDown<0){
            e.clear_Judge = false;
            clickJudge[12]=true;
          }
        }else if(i==2){
          g1_3.mainGame();
          if(g1_3.clear){
            e.clearTime = 60-(g1_3.timeLimit-g1_3.cleartime);;
            e.clear_Judge = true;
            clickJudge[12]=true;
          }else if(g1_3.countDown<0){
            e.clear_Judge = false;
            clickJudge[12]=true;
          }
        }
      }if(3<=i&&i<=5&&clickJudge[i+2]==true){
        if(i==3){
          g2_1.mainGame();
          if(g2_1.clear){
            e.clearTime = 60-(g2_1.timeLimit-g2_1.cleartime);
            e.clear_Judge = true;
            clickJudge[12]=true;
          }else if(g2_1.countDown<0){
            e.clear_Judge = false;
            clickJudge[12]=true;
          }
        }else if(i==4){
          g2_2.mainGame();
          if(g2_2.clear){
            e.clearTime = 60-(g2_2.timeLimit-g2_2.cleartime);
            e.clear_Judge = true;
            clickJudge[12]=true;
          }else if(g2_2.countDown<0){
            e.clear_Judge = false;
            clickJudge[12]=true;
          }
        }else if(i==5){
          g2_3.mainGame();
          if(g2_3.clear){
            e.clearTime = 60-(g2_3.timeLimit-g2_3.cleartime);;
            e.clear_Judge = true;
            clickJudge[12]=true;
          }else if(g2_3.countDown<0){
            e.clear_Judge = false;
            clickJudge[12]=true;
          }
        }
      }if(6<=i&&i<=8&&clickJudge[i+2]==true){
        if(i==6){
          g3_1.mainGame();
          if(g3_1.clear){
            e.clearTime = 60-(g3_1.timeLimit-g3_1.cleartime);;
            e.clear_Judge = true;
            clickJudge[12]=true;
          }else if(g3_1.countDown<0){
            e.clear_Judge = false;
            clickJudge[12]=true;
          }
        }else if(i==7){
          g3_2.mainGame();
          if(g3_2.clear){
            e.clearTime = 60-(g3_2.timeLimit-g3_2.cleartime);;
            e.clear_Judge = true;
            clickJudge[12]=true;
          }else if(g3_2.countDown<0){
            e.clear_Judge = false;
            clickJudge[12]=true;
          }
        }else if(i==8){
          g3_3.mainGame();
          if(g3_3.clear){
            e.clearTime = 60-(g3_3.timeLimit-g3_3.cleartime);;
            e.clear_Judge = true;
            clickJudge[12]=true;
          }else if(g3_3.countDown<0){
            e.clear_Judge = false;
            clickJudge[12]=true;
          }
        }
      }
    }
  }else if(clickJudge[13]!=true){
    e.display();
    
  }
}

void mouseClicked(){
  if(clickJudge[0]!=true){
    clickJudge[0]=clickBox(st.rxl,st.rxr,st.ryu,st.ryb);
  }else if(clickJudge[1]==false){
    for(int i=0;i<sl.rxr.length;i++){
      if(clickJudge[i+2]!=true){
        clickJudge[i+2]=clickBox(sl.rxl[i],sl.rxr[i],sl.ryu[i],sl.ryb[i]);
      }else{
        if(0<=i&&i<=2){ 
          if(i==0){
            g1_1.timeLimit += millis()/1000;
            level[1]=1;
          }else if(i==1){
            g1_2.timeLimit += millis()/1000;
            level[1]=2;
          }else if(i==2){
            g1_3.timeLimit += millis()/1000;
            level[1]=3;
          }
          clickJudge[i+2]=true;
          level[0]=1;
          
        }
        if(3<=i&&i<=5){
          if(i==3){
            g2_1.timeLimit += millis()/1000;
            level[1]=1;
          }else if(i==4){
            g2_2.timeLimit += millis()/1000;
            level[1]=2;
          }else if(i==5){
            g2_3.timeLimit += millis()/1000;
            level[1]=3;
          }
          clickJudge[i+2]=true;
          level[0]=2;
          level[1]=i-2;
        }
        if(6<=i&&i<=8){
          if(i==6){
            g3_1.timeLimit += millis()/1000;
          }else if(i==7){
            g3_2.timeLimit += millis()/1000;
          }else if(i==8){
            g3_3.timeLimit += millis()/1000;
          }
          clickJudge[i+2]=true;
          level[0]=3;
          level[1]=i-5;
        }
        
        clickJudge[1]=true;
      }
    }
  }else if(clickJudge[12]==true){
    if(clickBox(width/2-(width/2.8/2),width/2+(width/2.8/2),height/2-height/14,height/2+height/14)){
      for(int i=0;i<sl.rxr.length+2;i++){
        if(0<=i&&i<=2&&clickJudge[i+2]==true){
          if(i==0){
            g1_1.cleartime = 0;
            g1_1.clear = false;
            g1_1.timeLimit = 60;
            g1_1.countDown = 0;
            e.clear_Judge = false;
          }else if(i==1){
            g1_2.cleartime = 0;
            g1_2.clear = false;
            g1_2.timeLimit = 60;
            g1_2.countDown = 0;
            e.clear_Judge = false;
          }else if(i==2){
            g1_3.cleartime = 0;
            g1_3.clear = false;
            g1_3.timeLimit = 60;
            g1_3.countDown = 0;
            e.clear_Judge = false;
          }
        }if(3<=i&&i<=5&&clickJudge[i+2]==true){
          if(i==3){
            g2_1.cleartime = 0;
            g2_1.clear = false;
            g2_1.timeLimit = 60;
            g2_1.countDown = 0;
            e.clear_Judge = false;
          }else if(i==4){
            g2_2.cleartime = 0;
            g2_2.clear = false;
            g2_2.timeLimit = 60;
            g2_2.countDown = 0;
            e.clear_Judge = false;
          }else if(i==5){
            g2_3.cleartime = 0;
            g2_3.clear = false;
            g2_3.timeLimit = 60;
            g2_3.countDown = 0;
            e.clear_Judge = false;
          }
        }if(6<=i&&i<=8&&clickJudge[i+2]==true){
          if(i==6){
            g3_1.cleartime = 0;
            g3_1.clear = false;
            g3_1.timeLimit = 60;
            g3_1.countDown = 0;
            e.clear_Judge = false;
          }else if(i==7){
            g3_2.cleartime = 0;
            g3_2.clear = false;
            g3_2.timeLimit = 60;
            g3_2.countDown = 0;
            e.clear_Judge = false;
          }else if(i==8){
            g3_3.cleartime = 0;
            g3_3.clear = false;
            g3_3.timeLimit = 60;
            g3_3.countDown = 0;
            e.clear_Judge = false;
          }
        }
        clickJudge[i]=false;
      }
      clickJudge[12]=false;
    }
    if(clickBox(width/2-width/5.6,width/2+width/5.6,height/1.5,height/1.5+height/7)){
      for(int i=0;i<sl.rxr.length+2;i++){
        if(0<=i&&i<=2&&clickJudge[i+2]==true){
          if(i==0){
            g1_1.cleartime = 0;
            g1_1.clear = false;
            g1_1.timeLimit = 60 + millis()/1000;
            g1_1.countDown = 0;
            e.clear_Judge = false;
          }else if(i==1){
            g1_2.cleartime = 0;
            g1_2.clear = false;
            g1_2.timeLimit = 60 + millis()/1000;
            g1_2.countDown = 0;
            e.clear_Judge = false;
          }else if(i==2){
            g1_3.cleartime = 0;
            g1_3.clear = false;
            g1_3.timeLimit = 60 + millis()/1000;
            g1_3.countDown = 0;
            e.clear_Judge = false;
          }
        }if(3<=i&&i<=5&&clickJudge[i+2]==true){
          if(i==3){
            g2_1.cleartime = 0;
            g2_1.clear = false;
            g2_1.timeLimit = 60 + millis()/1000;
            g2_1.countDown = 0;
            e.clear_Judge = false;
          }else if(i==4){
            g2_2.cleartime = 0;
            g2_2.clear = false;
            g2_2.timeLimit = 60 + millis()/1000;
            g2_2.countDown = 0;
            e.clear_Judge = false;
          }else if(i==5){
            g2_3.cleartime = 0;
            g2_3.clear = false;
            g2_3.timeLimit = 60 + millis()/1000;
            g2_3.countDown = 0;
            e.clear_Judge = false;
          }
        }if(6<=i&&i<=8&&clickJudge[i+2]==true){
          if(i==6){
            //if(g3_1.clear){
            g3_1.cleartime = 0;
            g3_1.clear = false;
            g3_1.timeLimit = 60 + millis()/1000;
            g3_1.countDown = 0;
            e.clear_Judge = false;
          }else if(i==7){
            g3_2.cleartime = 0;
            g3_2.clear = false;
            g3_2.timeLimit = 60 + millis()/1000;
            g3_2.countDown = 0;
            e.clear_Judge = false;
          }else if(i==8){
            g3_3.cleartime = 0;
            g3_3.clear = false;
            g3_3.timeLimit = 60 + millis()/1000;
            g3_3.countDown = 0;
            e.clear_Judge = false;
          }
        }
      }
      clickJudge[12]=false;
    }
  }
}
boolean clickBox(float rxl,float rxr,float ryu,float ryb){
  if(rxl<=mouseX&&mouseX<=rxr){
    if(ryu<=mouseY&&mouseY<=ryb){
      return true;
    }
  }
  return false;
}
