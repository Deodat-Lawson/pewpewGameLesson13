class GameObject{
 
  float x,y,vx,vy, size,hp;
  color myColor;
  
  GameObject(color c){
  x = random(0, width);
  y = random(0, height);
  vx = vy = 0;
  hp = 1;
  myColor = c;
  size = random(20, 80);
  }
  
  GameObject(float x, float y, float size, float hp, color c){
    this.x = x;
    this.y = y;
    this.size = size;
    this.hp = hp;
    myColor = c;
    vx = vy = 0;
  }
  
  void show(){
   fill(myColor);
   ellipse(x,y,size,size);
    
  }
  
  void act(){
    x+=vx;
    y+=vy;
  }
  boolean isDead(){
   if(hp <=0){
    return true; 
   }
    return false;
  }
  boolean touching(GameObject obj){
   if(dist(obj.x,obj.y,x,y) < obj.size/2 + size/2){
        return true;
   }
   return false;
}

boolean touchingObstacle(){
   for(int i = 0; i < objects.size();i++){
     GameObject obj = objects.get(i);
     if(obj instanceof Obstacle && touching(obj)){
       return true;
   }
}
return false;
}
}
