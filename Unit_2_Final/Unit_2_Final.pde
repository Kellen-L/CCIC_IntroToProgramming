//Headache.jpg
/*HI, Hello, Welcome to my coding of the game snake this took me almost 6 hours and a lot and i mean a lot of caffine inculding one caffine fueled 10pm to 2:30 am coding session
which i ended up sleeping untill noon after which was fun, i feel like half the reason you gave us this project Ms.Spindt was because you knew we'd have to learn a lot more commands
and statments to get our game running well and at all, annnnnyways welcome to my code and this was painful to be sure
*/
//here underneath me we have my global varibles all of which my game could not function without to be sure, if a single one were missing some part of the game would just stop wether its just the
//game over screen or the whole snake its self my game needs all of these to function
int time =0;
//int gameover = 0;
boolean gameover = false;
int direc = 0;
int[] headx = new int[2500];
int[] heady = new int[2500];
int sneksize = 5;
//first time using the round function or statement whatever you call it but ths comand and it makes floats into integers so its quite nice for random comand
int[] fp = {(round(random(47))+1)*8,(round(random(47))+1)*8};
boolean redo = true;

//setup command which both starts the game and defines the size of the canvas used in my game
void setup(){
  restart();
  size(400,400);
  
}
//my draw function which its use is to create the new apple as well as check to make sure the game is still running every time draw is called in the canvas.
void draw(){
  //int[] fp = {int(random(9))*8,int(random(9))*8}; needs to be global ig wont work otherwise :P
  //all these statements do is add a grid function so i can see how the fruit and the snake is aligning to the grid i may or may not //it later to get rid of in game.
  
/*  frameRate(1);
  background(0,0,0);
  for(int x = 0; x < height; x += height/10){
    for(int y =0; y < width; y += width/10){
      stroke(150,150,150);
      
      line(x,0,x,height);
      line(0,y,width,y);
      
      //apperently there is a width and height command which relates to the height and width of the canvas which would have been nice to know before hand and changing 
      //my size of the canvas 7 times and then one by one the numbers in my loop and lets me control so many other numbers just by writing width or height and has been a great help lol
    }
  }
*/
// Underneath this comment i have the sole commands in my draw code that allow the game to fucntion
if(gameover){
}else{
  time++;
  fill(255,0,0);
  stroke(0);
  rect(fp[0],fp[1],8,8,25);
  fill(0);
  stroke(0);
  rect(0,0,width,8);
  rect(0,height-8,width,8);
  rect(0,0,8,height);
  if(time % 5 == 0){
    move();
    display();
    deadyet(gameover);
    //finally figured out how to define functions in draw idk why this took me so long to figure out :P
  }
}
}
//here i have my controls to my game using the key and coded comands to allow the use of non ASCII characters and here i use the arrow keys to move in my game. all these if statments are to ensure
//that i cant turn right back into my self and prevent me from dying that way.
void keyPressed(){
  if(key == CODED){
    if(keyCode == UP && direc != 270 && (heady[1]-8) != heady[2]){
    direc = 90;
  }
  if(keyCode == DOWN && direc != 90 && (heady[1]+8) != heady[2]){
    direc = 270;
  }
  if(keyCode == LEFT && direc != 0 && (headx[1]-8) != headx[2]){
    direc = 180;
  }
  if(keyCode == RIGHT && direc != 180 && (headx[1]+8) != headx[2]){
    direc = 0;
  }
  if(keyCode == SHIFT){//WHHHHHHHHYYYY CANT I TURN RIGHT OR LEFT IN CERITN CASES AHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH
  restart();//ive given up on trying to fix the turning i cant find my issue :P
  }//fixed it :P turns out i had the wrong head varible in it lol
 }
}
//This is my move function, this allows the snake head to move and not be a static block. as well as updating the postion of the snake so that headx[1] and heady[1] are always at the front and new postion in the canvas.
void move(){
  for(int i = sneksize; i > 0; i--){
    if(i != 1){
      headx[i] = headx[i-1];
      heady[i] = heady[i-1];
    }else{
      //cant forget to tell you what switch does. switch is just a fancy mans if else statement which can save time and effort from the coder helping them write less amounts of code but basiclly functions the same as an if else
      switch(direc){
        case 0:
        headx[1]+=8;
        break;
        case 90://each value of the case's are the value of directions thats dependant on the controls. 0 is right 90 is up 180 is left and 270 is down
        heady[1]-=8;
        break;
        case 180:
        headx[1]-=8;
        break;
        case 270:
        heady[1]+=8;
        break;
        //these case and break functions which i first learned from zach and now using them here with the help of the oh mighty processing refrence praise thy serve the function of changing dircetion based on what the controls comand as you play the game\
        //based on the value of direc the switch will translate the head in that direction every interval of draw changing wether the snake is moving up down left or right.
        //each case is just to act as (){} would in an if statment and the breaks act to get out of the case if the case value is not true.
      }
    }
  }
}
//the display function is what both draws the snake and adds to its size everytime a fruit is eaten as well as deleting the end of the snake as you move forward and not just have a super long trail of green behind you permantly
void display(){
  if(headx[1] == fp[0] && heady[1] == fp[1]){
    sneksize += int(random(3)+1);
    redo = true;
    while(redo){
      //below code placing a new fruit after the current one has been eaten.
      fp[0] = (round(random(47))+1)*8;
      fp[1] = (round(random(47))+1)*8;
      for(int i = 0; i < sneksize; i++){
        if(fp[0] == headx[i] && fp[1] == heady[i]){
          redo = true;
        }else{
          redo = false;
          
        }
      }
    }
  }
 //drawing the snake head and filling in behind the snake
  fill(0,255,0);
  rect(headx[1],heady[1],8,8);
  fill(0,0,0);
  rect(headx[sneksize],heady[sneksize],8,8);
}
//this function the deadyet function checks to see if the game has ended yet due to death from either hitting your self or hitting a wall.
boolean deadyet(boolean gameover){
  for(int i = 2; i<sneksize; i++){
    //this code below checks to see if the snake has hit itsself at any point during the game
    if(headx[1] == headx[i] && heady[1] == heady[i]){
      fill(0,0,0);
      stroke(0,255,0);
      rect(100,150,200,100);
      fill(255,255,255);
      textSize(15);
      text("GAME OVER",110,175);
      text("SCORE = " + sneksize,110,200);
      text("PLAY AGAIN? PRESS SHIFT",110,225);
      
    }
    //the code below checks if the snake has hit a wall or any of the edge of the canvas and kill it if so
    if(headx[1] >= width - 8 || heady[1] >= height-8 || headx[1] <= 0 || heady[1] <= 0){
      fill(0,0,0);
      stroke(0,255,0);
      rect(100,150,200,100);
      fill(255,255,255);
      textSize(15);//*style* fancy beautiful pretty 
      text("GAME OVER",110,175);
      text("SCORE = " + sneksize,110,200);
      text("PLAY AGAIN? PRESS SHIFT",110,225);
      
    }
  }
  return true;
}
//the restart function defines the canvas and the background as well as starting the game the first time and defining the start place of the snake.
void restart(){
  background(0,0,0);
  headx[1]=200;
  heady[1]=200;
  for(int i=2;i<80;i++)
  {
    headx[i]=0;
    heady[i]=0;
  }
  gameover=false;
  fp[0]= (int(random(9))*8);
  fp[1]= (int(random(9))*8);
  sneksize = 5;
  time=0;
  direc=0;
  redo=true;
}
/*Finally at the end of my code i finish up with this was so much pain and i hate java even more now then i did before and question why i put so much time effort and sweat into making a functioning snake game.
While making this was a bit of fun it was also like i said not fun at times struggling with the dumbest things and so i give my thanks to 
Xavier for helping me out with this , processing refrence and oh how i abused it so, and finally google and random people on the internet and forums having the same issues as me struggling.
And so i finish my code with nearly 200 lines of code and lots of pain and suffering included into this project.
*/
