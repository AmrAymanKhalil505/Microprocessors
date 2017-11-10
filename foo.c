#include <stdio.h> // I/O library 
int in  [50];// the array which contains the input
int res [50];// the array which contains the output
int i0=0;//the index of the item that should be filtered
/*
 *  function name : fill0
 *  description   : this funtion is made to fill the array which should contains 
 *                  the input(in array) with values according to the function inside it
 */
void fill0(){
  int i=0;
printf("{");
  for(i=0;i<50;i++){
    in[i]=(i*5+28)%32;
	printf("%d,", in[i]);
  }
printf("}\n");
}
/*
 *  function name : avg0
 *  description   : this funtion is made to get the average of the ten points near the index i0 
 *                  and saves the result in array res                   
 */
void avg0(){
  int avg=0;
  int k=0;
  int j=0;
  for(j=i0-4;j<=i0+5;j++){
      if((j>=0)&&(j<50)){
          avg=avg+in[j];
          k++;
      }
    } 
    avg=avg/k;
    res[i0]=avg;
}
/*
 *  function name : output0
 *  description   : this method is made to print what is inside the array res  
 */
void output0(){
    int i=0;
    printf("{");
    for(i=0;i<49;i++){
        printf("%d,",res[i]);
    }
    printf("%d}\n",res[49]);
}
/*
 *  function name : output0
 *  description   : main funtion,it calls fill0,avg0 and output0   
 */
int main (){

    int j=0;
    int avg=0;
     i0=0;
  
    fill0();
    for(i0=0;i0<50;i0++){
    
      avg0();
    }
    output0();
    return 0;
}
