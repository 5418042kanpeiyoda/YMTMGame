class Game1 extends Game{
  float x[] = new float[items];
  float y[] = new float[items]; 
  Game1(int[] lev,int ver,int hol, int co, int ob){
    super(lev,ver,hol,co,ob);
    int cnt = 0;
    for(int i = 0; i < horizunitem; i++){
      for(int j = 0; j < verticulitem; j++){
        x[cnt] = 50 + i*1200/horizunitem;
        y[cnt] = 225 + j*680/verticulitem;
        cnt++;
      }
    }
  }
  void drawobj(){
  int cnt = 0;
    for(int i = 0; i < verticulitem; i++){
      for(int j = 0; j < horizunitem; j++){
        fill(colset[s.colors[cnt]]);
        figure(s.objects[cnt],x[cnt],y[cnt]);
        checkInObj(s.objects[cnt],s.colors[cnt],x[cnt], y[cnt]);
        cnt++;
      }
    }
  }
  
  void moveobj(int i,int j, int cnt, int s){  
    //do nothing
  }
}
