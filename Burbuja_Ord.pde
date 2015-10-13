import java.util.*;
boolean state = false;
int elements = 50;


int [] A = new int[elements];
int sizeX = 1200;
int sizeY = 600;
int Iteracion = 0;
int j = 0;
int i = 0;

CreateGraphics Gp = new CreateGraphics(sizeX,sizeY,elements);

void setup(){
  
  frameRate(100);
  size(1200,600);
   
  //Peor de los casos 
  for(int i = 0; i < elements; i++)
      A[i] = elements - i; 
/**/
  //Caso Aleatorio
/*  for(int i = 0; i < elements; i++)
      A[i] = (int)random(1,100);
*/
    //Mejor de los casos 
 /* for(int i = 0; i < elements; i++)
      A[i] = i; 
  */
}

void draw(){

  if(i < A.length)
    if(j<this.A.length - i - 1){
      
      if(A[j+1]<A[j]){
        int aux=A[j+1];
        A[j+1]=A[j];
        A[j]=aux;
          
      } 
    Gp.graphicNow(this.A, j , j+1);
    j++;
    Iteracion++;
    }
    else{
      j = 0;
      i++;
    }
    
    scoreRange();
}

public void scoreRange(){
    
    fill(#EBFAFA,40);
    rect(20,10,150,50,10);
      
    if(Iteracion > 4500)
      fill(#F27A7A);
    else{
      if(Iteracion >1000)
        fill(#F5B2B2);
      else{
        if(Iteracion > 500)
          fill(#B2E3F5);
        else{
          if(Iteracion > 0)
          fill(#41F0EE);
        }
      }
    }
    textSize(25);  
    text(Iteracion,30,40);
}

public void burbuja(int [] A){//Algoritmo original
    int i, j, aux;
    
    for(i=0;i<A.length-1;i++)
        for(j=0;j<A.length-i-1;j++){
            if(A[j+1]<A[j]){
                aux=A[j+1];
                A[j+1]=A[j];
                A[j]=aux;
            }            
        }
}

void mousePressed() {  
  
  if(!state){
    state = true;  
    noLoop();
    
  }else{
    
    state = false;
    loop();
  }
}