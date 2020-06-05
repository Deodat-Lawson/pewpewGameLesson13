void game() {
  background(green);

  for(int i = 0; i < objects.size(); i++){
   GameObject obj = objects.get(i);
   obj.show();
   obj.act();
    if(obj.isDead()){
     objects.remove(i);
     i--;
    }
  }
  
  if(frameCount%40 == 0){
  objects.add(new Enemy());
  }
  
}

void gameClicks() {
  myPlayer.shoot();
}
