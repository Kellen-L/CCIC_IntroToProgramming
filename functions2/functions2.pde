int x = 0;
int speed = 1;
int red = 0;
int green = 0;
int blue = 0;
void setup(){
  size(750,750);
  background(0,0,0);
  fill(255,0,0);
  rect(x,300,100,100);
}
void draw(){
  red = red -1;
  green = green + 1;
  blue = blue + 1;
  x = x + speed;
  rect(x,300,100,100);
  if(x==650){
     speed = speed *-1;
    fill(255,0,0);
  }else if(x==0){
    speed = speed *-1;
    fill(255,0,0);
  }
}
