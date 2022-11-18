String[][] gameboard = {{"e","e","e"},{"e","e","e"},{"e","e","e"}};
void setup(){
  size(400,400);
  drawGameBoard();
  

}
void draw(){
  
  
}
void drawGameBoard(){
  rect(-1,-1,401,401);
  fill(0,0,0);
  rect(125,0,10,400);
  rect(250,0,10,400);
  rect(0,125,400,10);
  rect(0,250,400,10);
}

void mouseClicked(){
  if(mouseX < 125){
    if(mouseY < 125){
      if(gameboard[0][0] == "e"){
        textSize(100);
        text("X",35,100);
        gameboard[0][0] = "w";
     }
  }
 }
 if(mouseX > 125 && mouseX < 250){
    if(mouseY < 125){
      if(gameboard[0][0] == "e"){
      textSize(100);
      text("X",170,100);
      gameboard[0][1] = "w";
    }
  }
 }
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
}
