//スタート画面のクラス
class Start {
  int w = 1200;
  int h = 900;
  //スタートボタンの四隅の座標
  int rxl=w/2-w/6;
  int rxr=w/2+w/6;
  int ryu=h/2-h/10;
  int ryb=h/2+h/10;
  //使用する色の変数
  color white = 255;
  color black = 0;
  int textSize=h/12;
  //スタート画面の生成
  void display(){
    background(img);
    fill(white);
    rect(w/2,h/2,w/3,h/5);
    fill(black);
    textSize(150);
    text("Attack Target",width/2,height/6);
    textSize(h/6);
    text("PLAY",w/2,h/2);
  }
  //説明文の出力
  void example(){
    textSize(textSize);
    fill(black);
    text("PLAYボタンを押してね！！",w/2,h/2+textSize*3);
    fill(white);
    textSize(textSize/2.5);
    text("制限時間60秒以内にターゲットをクリックしよう！！",w/2,h/1.2);
    text("間違えると制限時間が減ってしまうから注意だ！！",w/2,h/1.2+h/27);
    text("たくさんのギミックを乗り越えてあなたはどのぐらいクリアできるかな？？",w/2,h/1.2+h/27*2);
  }
}
