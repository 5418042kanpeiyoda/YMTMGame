class Colors{
  int colnum = 10;
  color[] colset =new color[colnum];
  
  Colors(){
    colset[0] = color(0,128,0);
    colset[1] = color(128,0,128);
    colset[2] = color(255,0,0);
    colset[3] = color(0,255,0);
    colset[4] = color(0,0,255);
    colset[5] = color(255,255,0);
    colset[6] = color(0,255,255);
    colset[7] = color(255,0,255);
    colset[8] = color(255,165,0);
    colset[9] = color(51,102,255);
    
  }
  color[] randset(int n){
    color[] put = new color[n];
    int set[] = new int[n];
    IntList nums = new IntList(n);
    for (int i = 0; i < n; i++){
      nums.append(i);
    }
    nums.shuffle();
    set = nums.array();
    for(int i = 0; i < n; i++){
      put[i] = colset[set[i]];
    }
    return put;
  }
}
