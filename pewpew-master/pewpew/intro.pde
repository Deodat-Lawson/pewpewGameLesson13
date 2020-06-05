void intro() {
  //background
  background(black);
  fill(white);
  textSize(50);
  text("Pew Pew", width/2, height/3);
  text("Press Anywhere to start" , width/2, height/2);
}

void introClicks() {
  mode = GAME;
}
