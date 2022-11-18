String player1;
String player2;
boolean hasChossen;
String[][] gameboard = 
{{"","",""},
{"","",""},
{"","",""}};
void setup(){
  size(400,400);
  startScreen();
  //drawGameBoard();
  makemove();
  
  
}
void draw(){
  if(keyPressed){
    if(key == 'X'){
      player1 = "X";
      player2 = "O";
    void drawGameBoard(){
    
    
    fill(255,255,255);
    rect(-1,-1,401,401);
    fill(0,0,0);
    rect(125,0,10,400);
    rect(250,0,10,400);
    rect(0,125,400,10);
    rect(0,250,400,10);
       
}
    }
  }
}
void keyPressed(){
  if(key == 1){
    player1 = "X";
    player2 = "O";
    hasChossen = true;
  }else if(key == 2){
    player1 = "O";
    player2 = "X";
    hasChossen = true;
  }
}
 

void makemove(){
  
  
}
void startScreen(){
 fill(0,0,0);
 rect(-1,-1,401,401); 
 fill(255,255,255);
 textSize(30);
 text("Chose your character",70,50);
 textSize(100);
 text("x",50,250);
 text("o",300,250);
 
   
}





boolean haswon(){ 
  if(gameboard[0][0] == gameboard[0][1] == gameboard[0][2]){
    return true;
  }else if(gameboard[1][0] == gameboard[1][1] == gameboard[1][2]){
    return true;
  }else if(gameboard[2][0] == gameboard[2][1] == gameboard[2][2]){
    return true;
  }else if(gameboard[0][0] == gameboard[1][0] == gameboard[2][0]){
    return true;
  }else if(gameboard[0][1] == gameboard[1][1] == gameboard[2][1]){
    return true;
  }else if(gameboard[0][2] == gameboard[1][2] == gameboard[1][2]){
    return true;
  }else if(gameboard[0][0] == gameboard[1][1] == gameboard[2][2]){
    return true;
  }else if(gameboard[0][2] == gameboard[1][1] == gameboard[2][0]){
    return true;
  }
}
