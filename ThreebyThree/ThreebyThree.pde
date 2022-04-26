//Global Varaibles
float rectWidth, rectHeight, ptD;
color black = #000000, resetWhite = #FFFFFF, red = color(255,0,0);
//Points are organized by row and actually ... hint-hint ... value
float ptX1, ptY1, ptX2, ptY2, ptX3, ptY3, ptX4, ptY4;
float ptX5, ptY5, ptX6, ptY6, ptX7, ptY7, ptX8, ptY8;
float ptX9, ptY9, ptX10, ptY10, ptX11, ptY11, ptX12, ptY12;
float ptX13, ptY13, ptX14, ptY14, ptX15, ptY15, ptX16, ptY16;
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
  ptX1 = appWidth*0;
  ptY1 = appHeight*0;
  ptX2 = appWidth/3;
  ptY2 = appHeight*0;
  ptX3 = appWidth/3*2;
  ptY3 = appHeight*0;
  ptX4 = appWidth*0;
  ptY4 = appHeight/3;
  ptX5 = appWidth/3;
  ptY5 = appHeight/3;
  ptX6 = appWidth/3*2;
  ptY6 = appHeight/3;
  ptX7 = appWidth*0;
  ptY7 = appHeight/3*2;
  ptX8 = appWidth/3;
  ptY8 = appHeight/3*2;
  ptX9 = appWidth/3*2;
  ptY9 = appHeight/3*2;
  ptX10 = appWidth*1;
  ptY10 = appHeight*0;
  ptX11 = appWidth*1;
  ptY11 = appHeight/3;
  ptX12 = appWidth*1;
  ptY12 = appHeight/3*2;
  ptX13 = appWidth*1;
  ptY13 = appHeight*1;
  ptX14 = appWidth*0;
  ptY14 = appHeight*1;
  ptX15 = appWidth/3;
  ptY15 = appHeight*1;
  ptX16 = appWidth/3*2;
  ptY16 = appHeight*1;
  
}//End setup
//
void draw() 
{
  //Rectangle matrix must be 3 by 3
  rect(ptX1, ptY1, rectWidth, rectHeight);
  rect(ptX2, ptY2, rectWidth, rectHeight);
  rect(ptX3, ptY3, rectWidth, rectHeight);
  rect(ptX4, ptY4, rectWidth, rectHeight);
  rect(ptX5, ptY5, rectWidth, rectHeight);
  rect(ptX6, ptY6, rectWidth, rectHeight);
  rect(ptX7, ptY7, rectWidth, rectHeight);
  rect(ptX8, ptY8, rectWidth, rectHeight);
  rect(ptX9, ptY9, rectWidth, rectHeight);
  //
  //Starting pts for rect() must be 1-9 & filled black
  fill(black);
  ellipse(ptX1, ptY1, ptD, ptD);
  ellipse(ptX2, ptY2, ptD, ptD);
  ellipse(ptX3, ptY3, ptD, ptD);
  ellipse(ptX5, ptY5, ptD, ptD);
  ellipse(ptX6, ptY6, ptD, ptD);
  ellipse(ptX7, ptY7, ptD, ptD);
  ellipse(ptX9, ptY9, ptD, ptD);
  ellipse(ptX10, ptY10, ptD, ptD);
  ellipse(ptX11, ptY11, ptD, ptD);
  fill(resetWhite);
  //
  fill(red);
  ellipse(ptX4, ptY4, ptD, ptD);
  ellipse(ptX8, ptY8, ptD, ptD);
  ellipse(ptX12, ptY12, ptD, ptD);
  ellipse(ptX13, ptY13, ptD, ptD);
  ellipse(ptX14, ptY14, ptD, ptD);
  ellipse(ptX15, ptY15, ptD, ptD);
  ellipse(ptX16, ptY16, ptD, ptD);
  fill(resetWhite);
}//End draw
//
void keyPressed() {}//End keyPressed
//
void mousePressed() {}//End mousePressed
//
//End Main Program
