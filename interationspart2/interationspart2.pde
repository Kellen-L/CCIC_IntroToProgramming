int end = 1000;
for(int i = 1; i <= end; i = i + 1){
  if(i % 2 == 0){
  
  }
}
// challange 2
//answer
int n2 = 2;
int power = 2;
int result = 1;
for(int counter = 0; counter < power; counter = counter + 1){
  if(power == 0){
//print  
  }else if(power == 1){
   //print
  }
  result = result * n2;
}
println(result);
//next challange 3
int[] x = {44, 32, 86, 19};
int diffrence = 0;
if(x[0] < x[1]){
  if(x[0] > x[1]){
    println(x[0]-x[1]);
  }
}
//answer
int[] arr = {44, 32, 86, 19};
int small = arr[0];
int large = arr[0];
for(int num: arr){
  if(small > num){
    small = num;
  }
}

for(int num: arr){
  if(large < num){
    large = num;
  }
}
println(large - small);
// next challange 4
int[][] arr2 = {2, 9, 0},
{1, 3, 5,},
