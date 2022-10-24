int x = 23;
if(x % 3 == 0){
  print("yes");
}else{
  println("no");
}
//next challage
int y = 3;
if(y % 3 == 0){
  println("its a multiple of 3");
}else if(y % 5 == 0){
  println("its a multiple of 5");
}else{
  println("no");
}
//next challange
int z = 15;
if(z % 3 == 0 && z % 5 == 0){
  println("its a multiple of 3 and 5");
}else if(z % 5 == 0){
  println("its a multiple of 5");
}else if(y % 3 == 0){
  println("its a multiple of 3");
}else{
  println("no");
}
//end of 9-13-22
//next challange (challange 1)
String word1 = "hi";
String word2 = "bye";
if(word1 == word2){
  println("They are the same");
}else{
  println("Uh oh");
}
//next challange
//AHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH
int[] coef ={1,2,-3};
float dis = (coef[1] * coef[1] - (4 * coef[0] * coef[2]));
if(dis >= 0){
float nate = -1 * coef[1] + sqrt(dis);
float natesub = -1 * coef[1] -sqrt(dis);
float dom = 2 * coef[0];
println("x is " + nate/dom);
println("x is " + natesub/dom);
}else{
  println("I cant find a solution");
}
//Why do you hate us  Miss Spindt WHY!!!!!!!!!!!!!!
//more pain and suffering below
int[][] matrix = {{43,52,50,72,82,88,72},
{70,68,86,72,75,81,75},
{82,82,82,86,41,46,59},
{60,56,71,81,88,85,78}};
if(matrix[3][5] <= 65){
  println("wear a coat today");
}else{
  println("no coat needed today");
}
