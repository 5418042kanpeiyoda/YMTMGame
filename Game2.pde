class Game2 extends Game{
  float x[] = new float[items];
  float y[] = new float[items];
  
  Game2(int[] lev,int ver,int hol, int co, int ob){
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
    for(int i = 0; i < horizunitem; i++){
      for(int j = 0; j < verticulitem; j++){
        fill(colset[s.colors[cnt]]);
        figure(s.objects[cnt],x[cnt],y[cnt]);
        moveobj(i,j,cnt,1);
        checkInObj(s.objects[cnt],s.colors[cnt],x[cnt], y[cnt]);
        cnt++;
      }
    }
  }
  void moveobj(int i,int j,int cnt,int s){  
    if(i % 2 == 0){
      y[cnt] += s;
    }else{
      y[cnt] -= s;
    }
    if(i % 2 == 0 && y[cnt] > height+50){
      y[cnt] = 100;
    }
    if(i % 2 == 1 && y[cnt] < 100){
      y[cnt] = height+50;
    }
  }
}
