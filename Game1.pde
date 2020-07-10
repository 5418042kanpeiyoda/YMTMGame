class Game1 extends Game{
  float x[] = new float[items];
  float y[] = new float[items];
  
  Game1(int[] lev,int it,int co, int ob){
    super(lev,it,co,ob);
    int cnt = 0;
    for(int i = 0; i < 12; i++){
      for(int j = 0; j < 7; j++){
        x[cnt] = 50+i*100;
        y[cnt] = 225+j*100;
        cnt++;
      }
    }
  }
  void drawobj(){
  int cnt = 0;
    for(int i = 0; i < 12; i++){
      for(int j = 0; j < 7; j++){
        fill(colset[s.colors[cnt]]);
        figure(s.objects[cnt],50+i*100,225+j*100);
        checkInObj(s.objects[cnt],s.colors[cnt],x[cnt], y[cnt]);
        cnt++;
      }
    }
  }
  void moveobj(){  
    //do nothing
  }
}
