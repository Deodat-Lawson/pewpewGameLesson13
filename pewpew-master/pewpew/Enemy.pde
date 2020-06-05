class Enemy extends GameObject{
  int transparency;
  int time;
  Enemy(){
    super(random(0,width),random(0,height),20,1,white);    
    while(touchingObstacle()){
     x = random(0,width);
     y = random(0, height);
     
    }
    transparency = 0;
    time = 0;
  }
  void act(){
    super.act();
    if(transparency < 255){
    transparency++;
    }
    else{
      if(time%8 == 0){
      objects.add(new Bullet(x,y,5,1,white));
      }
      time++;
    }
   
  }
  void show(){
    fill(myColor,transparency);
   ellipse(x,y,size,size);
    
  }
  
 
  
  
}
