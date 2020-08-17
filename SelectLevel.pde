//大まかな難易度選択のクラス
class SelectLevel{
  //画面サイズの変数
  int w =1200;
  int h = 900;
  //レベル選択のボックスの四隅の座標
  int n =9;
  int [] rxl = new int[n];
  int [] rxr = new int[n];
  int [] ryu = new int[n];
  int [] ryb = new int[n];
  //使用する色の変数
  color white = 255;
  color black = 0;
  //難易度選択画面の生成
  void display(){
    background(img);
    noStroke();
    fill(white);
    rect(w/2,h/2,w/6,h/18);
    stroke(black);
    textSize(h/15);
    int k = 0;
    fill(0);
    text("ダブルクリックしてね！！",width/2,height/8);
    for(int i=0;i<3;i++){
      for(int j=0;j<4;j++){
        if(j==0){
          fill(black);
          if(i==0){
            text("EASY",w/6+(w/3)*i,h/5+h/27+(h/6)*j);
          }else if(i==1){
            text("NORMAL",w/6+(w/3)*i,h/5+h/27+(h/6)*j);
          }else{
            text("HARD",w/6+(w/3)*i,h/5+h/27+(h/6)*j);
          }
        }else{
          fill(white);
          rxl[k] = w/6+(w/3)*i-w/12;
          rxr[k] = w/6+(w/3)*i+w/12;
          ryu[k] = h/5+(h/6)*j-h/18;
          ryb[k] = h/5+(h/6)*j+h/18;
          rect(rxl[k]+w/12,ryu[k]+h/18,w/6,h/9);
          fill(black);
          text("LEVEL" + (j),w/6+(w/3)*i,h/5+(h/6)*j);
          k++;
        }
      }
    }
  }
}
