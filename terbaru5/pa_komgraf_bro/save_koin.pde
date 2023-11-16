void saveKoin(){
  try{
    String[] lines = loadStrings("koin1.txt");
    println("there are " + lines.length + " lines");
    for (int i = 1 ; i <= lines.length/2; i++) {
      koin kn = new koin(Float.parseFloat(lines[i*4-2]), Float.parseFloat(lines[i*4-1]));
      koins.add(kn);
      //println(lines[i]);
    }
  }
  catch(Exception e){
    
  }
  save_koin = createWriter("koin1.txt");
  try{
    for(koin i : koins){
      String[] list = new String[]{Float.toString(i.x), Float.toString(i.y)};
      for(String is : list){
        save_koin.println(is);
      }
    }
  }
  catch(Exception e){
    print("error");
  }
  save_koin.flush();
}
