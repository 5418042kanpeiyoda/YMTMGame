class End {
  color white;
  color black;
  int textSize;
  int clearTime;
  boolean clear_Judge;
  
  End() {
    white = 255;
    black = 0;
    textSize=100;   
    clear_Judge = true;
  }
  
  void display() {
    background(img);
    if(clear_Judge) {
      textSize(textSize*1.5);
      fill(black);
      text("CLEAR",width/2,height/5.5);
      textSize(textSize*0.5);
      fill(black);
      text("クリアタイム: "+clearTime+"秒", width/2,height/3.1);
      fill(white);
      rect(width/2,height/2,width/2.8,height/7);
      textSize(textSize*0.75);
      fill(black);
      text("レベルを選択",width/2,height/2);
      fill(white);
      line(width/2-width/5.6,height/1.5,width/2+width/5.6,height/1.5);
      line(width/2-width/5.6,height/1.5+height/7,width/2+width/5.6,height/1.5+height/7);
      line(width/2-width/5.6,height/1.5,width/2-width/5.6,height/1.5+height/7);
      line(width/2+width/5.6,height/1.5,width/2+width/5.6,height/1.5+height/7);
      textSize(textSize*0.9);
      fill(black);
      text("RETRY", width/2, height/1.5+height/14);
    } else {
      textSize(textSize*1.4);
      fill(black);
      text("GAMEOVER",width/2,height/5.5);
      textSize(textSize*0.5);
      fill(black);
      text("残念でした!!", width/2,height/3.1);
      fill(white);
      rect(width/2,height/2,width/2.8,height/7);
      textSize(textSize);
      fill(black);
      text("RETRY",width/2,height/2);
      fill(white);
      line(width/2-width/5.6,height/1.5,width/2+width/5.6,height/1.5);
      line(width/2-width/5.6,height/1.5+height/7,width/2+width/5.6,height/1.5+height/7);
      line(width/2-width/5.6,height/1.5,width/2-width/5.6,height/1.5+height/7);
      line(width/2+width/5.6,height/1.5,width/2+width/5.6,height/1.5+height/7);
      textSize(textSize*0.65);
      fill(black);
      text("レベルを選択", width/2, height/1.5+height/14);
    }
  }
}
