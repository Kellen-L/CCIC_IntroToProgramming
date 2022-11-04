String[][] face ={
{" ","*"," ","*"," "},
{" "," ","*"," "," "},
{"|","_","_","_","|"}
};
void setup(){
  drawsmiley();
  delay(500);
  wink();
  delay(500);
  drawsmiley();
  delay(500);
  openeye();
  delay(500);
  drawsmiley();
  delay(500);
  clear();
  
}
void drawsmiley(){
  for(int i = 0; i < face.length; i++){
    for(int j = 0; j < face[i].length; j++){
      print(face[i][j]);
    }
    println();
  }
}
void wink(){
  face[0][3] = "-";
}
void openeye(){
  face[0][3] = "*";
}
void clear(){
  String[][] clear = {{""},
  {""},
   {""},
    {""},
     {""},
      {""},
       {""},
       {""}
};
for(int x = 0; x < clear.length; x++){
    for(int y = 0; y < clear[x].length; y++){
      print(clear[x][y]);
    }
    println();
}
}
