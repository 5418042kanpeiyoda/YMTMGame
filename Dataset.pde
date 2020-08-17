class Dataset{
  int items;
  int[] objects;
  int[] colors;
  int terobj,tercol;
  Dataset(int n){
    items = n;
    objects = new int[n];
    colors = new int[n];
  }
  void dset(int obj, color[] col){  
    int objTerget = int(random(obj));
    int colTerget = int(random(col.length));
    int terget = int(random(items));
    for(int i = 0; i < items; i++){
      if(i == terget){
        objects[i] = objTerget;
        colors[i] = colTerget;
        terobj = objTerget;
        tercol = colTerget;
      }else{
        objects[i] = int(random(obj));
        colors[i] = int(random(col.length));
        while(objects[i] == objTerget && colors[i] == colTerget){
          objects[i] = int(random(obj));
          colors[i] = int(random(col.length));
        }
      }
    }
  }
}
