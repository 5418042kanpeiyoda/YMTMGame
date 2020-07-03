abstract class Game{
  int timeLimit = 10;
  int countDown = timeLimit;
  int[] level;
  int colN;
  int objN;
  int items;
  int targetX;
  int targetY;
  boolean targetClick = false;
  color[] colset;
  Colors c;
  Dataset s;
  End e;
  Game(int[] lev,int it,int co, int ob){
    level = lev;
    items = it;
    colN = co;
    objN = ob;
    colset = new color[colN];
    s = new Dataset(items);
    c = new Colors();
    e = new End();
    colset = c.randset(colN);
    s.dset(objN,colset);
  }
  
  void mainGame(){
    background(colset[0]);
    int ms = millis()/1000;
    if(countDown > 0&& targetClick==false){
      countDown = timeLimit - ms;
      drawTop();
      drawobj();
    }
    if(countDown > 0&& targetClick==true){
      e.clear_Judge = true;
      e.display();
      e.example();
    }else if(countDown==0){
      e.clear_Judge = false;
      e.display();
      e.example();
    }
  }
  
  void drawobj(){
  }
  boolean isFigureClick(){
    if(dist(mouseX,mouseY,targetX,targetY)<50){
      
      return true;
    }
    return false;
  }
  abstract void moveobj(int i,int j, int cnt,int s);
  void drawTop(){
    stroke(0);
    fill(colset[s.tercol]);
    rect(600,75,width,150);
    fill(255);
    ellipse(580,75,150,150);
    ellipse(700,60,100,100);
    
    fill(colset[s.tercol]);
    figure(s.objects[s.terobj],580,75);
    
    fill(0);
    textSize(60);
    text(countDown, 700, 60);
    if(level[0] == 1){
      text("EASY",200, 75);
    }else if(level[0] == 2){
      text("NORMAL",200, 75);
    }else{
      text("HARD",200, 75);
    }
    text("LEVEL:"+level[1], 1000, 75);
  }
  
  void figure(int n, float x,float y){
    strokeWeight(2);
    stroke(0);
    
    if(s.objects[n] == 0){
      rect(x,y,100,100);
    }else if(s.objects[n] == 1){
      ellipse(x,y,100,100);
    }else if(s.objects[n] == 2){
      float a,b;
      strokeJoin(ROUND); 
      pushMatrix();
      translate(x,y);
      beginShape();
      for (int theta = 0; theta < 360; theta++) {
        a = 3 * (16 * sin(radians(theta)) * sin(radians(theta)) * sin(radians(theta)));
        b = (-1) * 3 * (13 * cos(radians(theta)) - 5 * cos(radians(2 * theta)) 
        - 2 * cos(radians(3 * theta)) - cos(radians(4 * theta)));
        vertex(a, b);
      }
      endShape(CLOSE);
      popMatrix();
    }else if(s.objects[n] == 3){
      int prickleNum = 5;
      float r = 47.5;
      int vertexNum = prickleNum*2;  
      float R;  
      float outR = r;  
      float inR = outR/2;  
      pushMatrix();
      translate(x,y);
      rotate(radians(-90));
      beginShape();
      for (int a = 0; a < vertexNum; a++) {
        if (a%2 == 0) {
          R = outR;
        } else {
          R = inR;
        }
        vertex(R*cos(radians(360*a/vertexNum)), R*sin(radians(360*a/vertexNum)));
      }
      endShape(CLOSE);
      popMatrix();
    }else if(s.objects[n] == 4){
      float r = 47.0;
      float R;
      pushMatrix();
      translate(x, y);
      beginShape();
      for (int i = 0; i < 4; i++) {
        if (i % 2 == 0) {
          R = r/2;
        } else {
          R = r;
        }  
        vertex(R*cos(radians(90*i)), R*sin(radians(90*i)));
      }
    endShape(CLOSE);
    popMatrix();
  }else{
    float vertical = 30.5;
    float side = 100;
    rect(x, y, side, vertical);
    rect(x, y, vertical, side);
    noStroke();
    rect(x,y,vertical+4,vertical+4);
  }
}
}
