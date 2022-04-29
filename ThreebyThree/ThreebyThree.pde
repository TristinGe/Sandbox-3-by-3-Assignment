//Global Varaibles
float rectWidth, rectHeight, ptD;
color black = #000000, resetWhite = #FFFFFF, red = color(255, 0, 0);
//Points are organized by row and actually ... hint-hint ... value
int numberOfPoints = 17;
float[] ptX = new float[numberOfPoints];
float[] ptY = new float[numberOfPoints];
//float ptX1, ptY1, ptX2, ptY2, ptX3, ptY3, ptX4, ptY4;
//float ptX5, ptY5, ptX6, ptY6, ptX7, ptY7, ptX8, ptY8;
//float ptX9, ptY9, ptX10, ptY10, ptX11, ptY11, ptX12, ptY12;
//float ptX13, ptY13, ptX14, ptY14, ptX15, ptY15, ptX16, ptY16;
//
void setup() 
{
  size(900, 680); //fullScreen(); //displayWidth, displayHeight
  display();
  //
  //Population
  rectWidth = appWidth/3;
  rectHeight = appHeight/3;
  ptD = appWidth/30;
  //
  for (int j=1; j<4; j++)
  {
    for (int i=1; i<ptX.length; i+=4) 
    { 
      ptX[i+j] = appWidth*j/3.0;
    }
  }
  //
  //
  for (int j=0; j<4; j+=4)
  {
    for (int i=1+j; i<5; i+=1) 
    {
      ptY[i+(j-j)] = appHeight*j/3.0;
    }
  }
  //
  printArray(ptX);
  printArray(ptY);
}//End setup
//
void draw() 
{
  //Rectangle matrix must be 3 by 3
  for ( int j=0; j<9; j+=4) {
    for (int i=1+j; i<4; i++) 
    {    
      rect(ptX[i+j], ptY[i], rectWidth, rectHeight);
      fill(black);
      ellipse(ptX[i+j], ptY[i], ptD, ptD);
      fill(resetWhite);
    }
  }
  //
  fill(red);
  for (int i=4; i<9; i+=4) 
  {
    ellipse(ptX[i], ptY[i], ptD, ptD);
  }
  //
  for (int i=12; i<17; i++) 
  {
    ellipse(ptX[i], ptY[i], ptD, ptD);
  }
  fill(resetWhite);
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End Main Program
