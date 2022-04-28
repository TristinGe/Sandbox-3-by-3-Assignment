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
  for (int i=1; i<ptX.length;i+=4) 
  { ptX[i] = appWidth*0; }//  ptX[1] = ptX[5] = ptX[9] = ptX[13] = appWidth*0
  for (int i=2; i<ptX.length;i+=4) 
  { ptX[i] = appWidth/3; }//  ptX[2] = ptX[6] = ptX[10] = ptX[14] = appWidth/3
  for (int i=3; i<ptX.length;i+=4) 
  { ptX[i] = appWidth*2/3; }//  ptX[3] = ptX[7] = ptX[11] = ptX[15] = appWidth*2/3
  for (int i=4; i<ptX.length;i+=4) 
  { ptX[i] = appWidth*1; }//  ptX[4] = ptX[8] = ptX[12] = ptX[16] = appWidth*1
  //
  for (int i=1; i<ptY.length;i+=1) 
  { ptY[i] = appHeight*0; }//  ptY[1] = ptY[2] = ptY[3] = ptY[4] = appHeight*0;
  for (int i=5; i<ptY.length;i+=1) 
  { ptY[i] = appHeight/3; }//  ptY[5] = ptY[6] = ptY[7] = ptY[8] = appHeight/3;
  for (int i=9; i<ptY.length;i+=1) 
  { ptY[i] = appHeight*2/3; }//  ptY[9] = ptY[10] = ptY[11] = ptY[12] = appHeight*2/3;
  for (int i=13; i<ptY.length;i+=1) 
  { ptY[i] = appHeight*1; }//  ptY[13] = ptY[14] = ptY[15] = ptY[16] = appHeight*3/3;
  //
}//End setup
//
void draw() 
{
  //Rectangle matrix must be 3 by 3
  rect(ptX[1], ptY[1], rectWidth, rectHeight);
  rect(ptX[2], ptY[2], rectWidth, rectHeight);
  rect(ptX[3], ptY[3], rectWidth, rectHeight);
  rect(ptX[5], ptY[5], rectWidth, rectHeight);
  rect(ptX[6], ptY[6], rectWidth, rectHeight);
  rect(ptX[7], ptY[7], rectWidth, rectHeight);
  rect(ptX[9], ptY[9], rectWidth, rectHeight);
  rect(ptX[10], ptY[10], rectWidth, rectHeight);
  rect(ptX[11], ptY[11], rectWidth, rectHeight);
  //
  //Starting pts for rect() must be 1-9 & filled black
  fill(black);
  ellipse(ptX[1], ptY[1], ptD, ptD);
  ellipse(ptX[2], ptY[2], ptD, ptD);
  ellipse(ptX[3], ptY[3], ptD, ptD);
  ellipse(ptX[5], ptY[5], ptD, ptD);
  ellipse(ptX[6], ptY[6], ptD, ptD);
  ellipse(ptX[7], ptY[7], ptD, ptD);
  ellipse(ptX[9], ptY[9], ptD, ptD);
  ellipse(ptX[10], ptY[10], ptD, ptD);
  ellipse(ptX[11], ptY[11], ptD, ptD);
  fill(resetWhite);
  //
  fill(red);
  ellipse(ptX[4], ptY[4], ptD, ptD);
  ellipse(ptX[8], ptY[8], ptD, ptD);
  ellipse(ptX[12], ptY[12], ptD, ptD);
  ellipse(ptX[13], ptY[13], ptD, ptD);
  ellipse(ptX[14], ptY[14], ptD, ptD);
  ellipse(ptX[15], ptY[15], ptD, ptD);
  ellipse(ptX[16], ptY[16], ptD, ptD);
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
