ArrayList<GameObject> objects;
Player myPlayer;

//color pallette
color black  = #000000;
color white  = #FFFFFF;
color purple = #490A3D;
color pink   = #BD1550;
color orange = #E97F02;
color yellow = #F8CA00;
color green  = #8A9B0F;

//mode framework variables
final int INTRO    = 0;
final int GAME     = 1;
final int PAUSE    = 2;
final int GAMEOVER = 3;
int mode = INTRO;

//key variables;
boolean wkey, akey, skey, dkey, spacekey;


//#################################### SETUP ###############################################

void setup() {
  //graphics
  size(800, 800);
  noStroke();
  textAlign(CENTER);
  //initialize key variables
  wkey = akey = skey = dkey = spacekey = false;
  
  //Player initialize
  objects = new ArrayList<GameObject>();
  myPlayer = new Player();
  objects.add(myPlayer);
  objects.add(new Obstacle()); 
  for(int i= 0; i < 100; i++){
   objects.add(new Obstacle()); 
  }
}

//##################################### DRAW ################################################

void draw() {
  if      (mode == INTRO)    intro();
  else if (mode == GAME)     game();
  else if (mode == PAUSE)    pause();
  else if (mode == GAMEOVER) gameOver();
  else println("Mode error! You need to add a new mode to your mode framework in the draw function! -- Mr. Pelletier");
  
  //println(objects.size());
}
