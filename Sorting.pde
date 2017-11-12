int array[];
int flag, i, j, temp;

void setup() {
  background(245);
  size(400,300);
  
  flag=0; i=1;
  frameRate(700);
  
  array= new int[width+1];
  for (int i=0; i<=width; i++) {
    array[i]=(int)random(255);
    stroke(array[i]);
    line(i, 0, i, height);
  }
}

void draw() {
  stroke(array[i]);
  line(i, 0, i, 300);
  
  if(flag==1) {
    
    if (j>i) {
     if(array[j]<array[j-1]) {
       int temp=array[j];
       array[j]=array[j-1];
       array[j-1]=temp;
     }
     stroke(array[j]);
     line(j, 0, j, 300);
     j--;
    }
    else {
      i++;
      flag=0;
    }
  }
  
  if (flag==0) {
    if(i<width-1) {
      j=width-1;
      flag=1;
    }
  }
}