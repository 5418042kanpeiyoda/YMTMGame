class Game3 extends Game {
  float x[] = new float[items];
  float y[] = new float[items];
  
  Game3(int[] lev, int it, int co, int ob) {
    super(lev, it, co, ob);
    int cnt = 0;
    for(int i = 0; i < 8; i++){
      for(int j = 0; j < 5; j++){
        x[cnt] = 75+i*150;
        y[cnt] = 250+j*175;
        cnt++;
      }
    }
  }
  
  void drawobj() {
    int cnt = 0;
    for(int i = 0; i < 8; i++){
      for(int j = 0; j < 5; j++){
        fill(colset[s.colors[cnt]]);
        figure(s.objects[cnt],x[cnt],y[cnt]);
        checkInObj(s.objects[cnt],s.colors[cnt],x[cnt], y[cnt]);
        moveobj(i,j,cnt,1);
        cnt++;
      }
    }
  }
  
  void moveobj(int i, int j, int cnt, int s) {
    if(i % 2 == 0) {
      x[cnt] += s;
      y[cnt] += s;
    } else {
      x[cnt] -= s;
      y[cnt] -= s;
    }
    if(i % 2 == 0 && y[cnt] > height + 25) {
      y[cnt] = 100;
    }
    
    if(i % 2 == 1 && y[cnt] < 50){
      y[cnt] = height+25;
    }
    
    if(i % 2 == 0 && x[cnt] > width + 25) {
      x[cnt] = 100;
    }
    
    if(i % 2 == 1 && x[cnt] < 50){
      x[cnt] = width+25;
    }
  }
}