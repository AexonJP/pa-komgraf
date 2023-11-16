void savePlat(){
  try{
    String[] lines = loadStrings("world1.txt");
    println("there are " + lines.length + " lines");
    for (int i = 1 ; i <= lines.length/4; i++) {
      platform xs = new platform(Float.parseFloat(lines[i*4-4]), Float.parseFloat(lines[i*4-3]), Float.parseFloat(lines[i*4-2]),Float.parseFloat(lines[i*4-1]));
      xs.load();
      plat.add(xs);
      if(xs.x2 - xs.x1 > 70 ){
        int banyak = (int)random((xs.x2-xs.x1) / 70);
        for(int ix =0;ix<banyak;ix++){
          enemy en = new enemy(xs.x1, xs.y1,xs.x2);
          en.load();
          monster.add(en);
        }
      }
      //println(lines[i]);
    }
  }
  catch(Exception e){
    
  }
  
  
  save_plat = createWriter("world1.txt");
  
  try{
    for(platform i : plat){
      String[] list = new String[]{Float.toString(i.x1), Float.toString(i.y1),Float.toString(i.x2-i.x1),Float.toString(i.y2-i.y1)};
      for(String is : list){
        save_plat.println(is);
      }
    }
  }
  catch(Exception e){
    print("error");
  }
  save_plat.flush();
}
