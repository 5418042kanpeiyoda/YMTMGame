class Game1 extends Game{
  Game1(int[] lev,int it,int co, int ob){
    super(lev,it,co,ob);
  }
  void drawobj(){
  int cnt = 0;
    for(int i = 0; i < 12; i++){
      for(int j = 0; j < 7; j++){
        fill(colset[s.colors[cnt]]);
        figure(s.objects[cnt],50+i*100,225+j*100);
        cnt++;
      }
    }
  }
  
  void moveobj(){  
    //do nothing
  }
}
