Start st = new Start();
SelectLevel sl = new SelectLevel();
End e = new End();
int[] level = {2,5};
int item = 84;
int col = 10;
int obj = 6;
Game g1 = new Game1(level, item, col, obj);
Game g2 = new Game2(level, 42, col, obj);
//初期画面の判定
int len=100;
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
  }else{
    g1.mainGame();
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
          g1.level[0]=1;
          g1.level[1]=i+1;
        }else if(i<=5){
          g1.level[0]=2;
          g1.level[1]=i+1-3;
        }else{
          g1.level[0]=3;
          g1.level[1]=i+1-6;
        }
        g1.timeLimit += millis()/1000;
        clickJudge[1]=true;
      }
    }
  }else if(clickJudge[12]!=true){
    if(g1.clear==true){
      clickJudge[12]=true;
    }
  }
}
boolean clickBox(int rxl,int rxr,int ryu,int ryb){
  if(rxl<=mouseX&&mouseX<=rxr){
    if(ryu<=mouseY&&mouseY<=ryb){
      return true;
    }
  }
  return false;
}
