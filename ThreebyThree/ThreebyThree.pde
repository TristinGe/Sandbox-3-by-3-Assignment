//Global Variables
color black=#000000, resetWhite=#FFFFFF, red=#FF0000, yellow=#FFFF00; //Not night mode (lots of Blue)
float rectWidth, rectHeight, ptD;
//Points are organized by row and actaully ... hint-hint ... value
int numberOfPoints = 17;
float[] ptX = new float[numberOfPoints];
float[] ptY = new float[numberOfPoints];
int numberofButtons = 4;//will be 11:quit, reset, and 9 more buttons, 1 per section(3*3)
float[] buttonX = new float[numberofButtons];
float[] buttonY = new float[numberofButtons];
float[] buttonWidth = new float[numberofButtons];
float[] buttonHeight = new float[numberofButtons];
 Boolean turnOnYellow=true;
//
void setup()
{
  size(900, 650); //fillScreen(); //displayWidth, displayHeight
  display();
  //
  //Population
  rectWidth = appWidth*1/3;
  rectHeight = appHeight*1/3;
  ptD = appWidth*1/50;
  //
  ptX[1] = ptX[5] = ptX[9] = ptX[13] = appWidth*0/3;
  ptX[2] = ptX[6] = ptX[10] = ptX[14] = appWidth*1/3;
  ptX[3] = ptX[7] = ptX[11] = ptX[15] = appWidth*2/3;
  ptX[4] = ptX[8] = ptX[12] = ptX[16] = appWidth*3/3;
  //
  ptY[1] = ptY[2] = ptY[3] = ptY[4] = appHeight*0/3;
  ptY[5] = ptY[6] = ptY[7] = ptY[8] = appHeight*1/3;
  ptY[9] = ptY[10] = ptY[11] = ptY[12] = appHeight*2/3;
  ptY[13] = ptY[14] = ptY[15] = ptY[16] = appHeight*3/3;
  //
  //1
  buttonX[1] = appWidth/9;//Section 1, subsection 1: numerator(count is 1)
  buttonY[1] = appHeight/9;//Section 1, subsection 1: numerator( count is 1)
  buttonWidth[1] = appWidth/9;//Section 1, subsection 1: denominator(count = 9, 1/9)
  buttonHeight[1] = appHeight/9;//Section 1, subsection 1: denominator(count = 9, 1/9)
  //
  //2
  buttonX[2] = appWidth/2;//section 2
  buttonY[2] = appHeight/3;
  buttonWidth[2] = appWidth/6;
  buttonHeight[2] = appHeight/6;
  //
  //3
  buttonX[3] = appWidth*11/15;//section 3
  buttonY[3] = appHeight*13/15;
  buttonWidth[3] = appWidth/15;
  buttonHeight[3] = appHeight/15;
  //
  //Verifying Array Read-in
  print("\nX-valuses are:");
  print(ptX);
  print("\nY-valuses are:");
  print(ptY);
}//End setup
//
void draw() {
  //Rectangles must be 3 by 3
  rect(ptX[1], ptY[1], rectWidth, rectHeight);
  //
  if( turnOnYellow==true) fill(yellow);
  //if() fill(pink);
  //if() fill(brown);
  rect(ptX[2], ptY[2], rectWidth, rectHeight);//Button change the colour of RECT
  fill(resetWhite);
  //
  rect(ptX[3], ptY[3], rectWidth, rectHeight);
  rect(ptX[5], ptY[5], rectWidth, rectHeight);
  rect(ptX[6], ptY[6], rectWidth, rectHeight);
  rect(ptX[7], ptY[7], rectWidth, rectHeight);
  rect(ptX[9], ptY[9], rectWidth, rectHeight);
  rect(ptX[10], ptY[10], rectWidth, rectHeight);
  rect(ptX[11], ptY[11], rectWidth, rectHeight);
  //
  fill(yellow);
  if ( mouseX>=buttonX[1] && mouseX<=buttonX[1]+buttonWidth[1] && mouseY>=buttonY[1] && mouseY<=buttonY[1]+buttonHeight[1] ) {
    fill(yellow);
    rect( buttonX[1], buttonY[1], buttonWidth[1], buttonHeight[1]);
  } else {
    fill(black);
    rect( buttonX[1], buttonY[1], buttonWidth[1], buttonHeight[1]);
  }
  if ( mouseX>=buttonX[2] && mouseX<=buttonX[2]+buttonWidth[2] && mouseY>=buttonY[2] && mouseY<=buttonY[2]+buttonHeight[2] ) {
    fill(yellow);
    rect( buttonX[2], buttonY[2], buttonWidth[2], buttonHeight[2]);
  } else {
    fill(black);
    rect( buttonX[2], buttonY[2], buttonWidth[2], buttonHeight[2]);
  }
  if ( mouseX>=buttonX[3] && mouseX<=buttonX[3]+buttonWidth[3] && mouseY>=buttonY[3] && mouseY<=buttonY[3]+buttonHeight[3] ) {
    fill(yellow);
    rect( buttonX[3], buttonY[3], buttonWidth[3], buttonHeight[3]);
  } else {
    fill(black);
    rect( buttonX[3], buttonY[3], buttonWidth[3], buttonHeight[3]);
  }
  if ( mouseX>=ptX[3] && mouseX<=ptX[3]+rectWidth && mouseY>=ptY[3] && mouseY<=ptY[3]+rectHeight ) {
    fill(yellow);
    rect(ptX[3], ptY[3], rectWidth, rectHeight);
  } else {
    fill(black);
    rect(ptX[3], ptY[3], rectWidth, rectHeight);
  }

  fill(resetWhite);
  //
  fill(black);
  //Starting pts for rect() must be 1-9 & filled black
  ellipse(ptX[1], ptY[1], ptD, ptD);
  ellipse(ptX[2], ptY[2], ptD, ptD);
  ellipse(ptX[3], ptY[3], ptD, ptD);
  ellipse(ptX[5], ptY[5], ptD, ptD);
  ellipse(ptX[6], ptY[6], ptD, ptD);
  ellipse(ptX[7], ptY[7], ptD, ptD);
  ellipse(ptX[9], ptY[9], ptD, ptD);
  ellipse(ptX[10], ptY[10], ptD, ptD);
  ellipse(ptX[11], ptY[11], ptD, ptD);
  fill(resetWhite); //Best Practice
  //
  fill(red);
  //Points for all other ellipses must be red
  ellipse(ptX[4], ptY[4], ptD, ptD);
  ellipse(ptX[8], ptY[8], ptD, ptD);
  ellipse(ptX[12], ptY[12], ptD, ptD);
  ellipse(ptX[13], ptY[13], ptD, ptD);
  ellipse(ptX[14], ptY[14], ptD, ptD);
  ellipse(ptX[15], ptY[15], ptD, ptD);
  ellipse(ptX[16], ptY[16], ptD, ptD);
  fill(resetWhite); //Best Practice
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  if ( mouseX>=buttonX[1] && mouseX<=buttonX[1]+buttonWidth[1] && mouseY>=buttonY[1] && mouseY<=buttonY[1]+buttonHeight[1] ) {println("BTN 1 Acrivated");}
  if ( mouseX>=buttonX[2] && mouseX<=buttonX[2]+buttonWidth[2] && mouseY>=buttonY[2] && mouseY<=buttonY[2]+buttonHeight[2]) {println("BTN 2 Acrivated");}
  if ( mouseX>=buttonX[3] && mouseX<=buttonX[3]+buttonWidth[3] && mouseY>=buttonY[3] && mouseY<=buttonY[3]+buttonHeight[3]) {println("BTN 3 Acrivated");}
  if ( mouseX>=ptX[3] && mouseX<=ptX[3]+rectWidth && mouseY>=ptY[3] && mouseY<=ptY[3]+rectHeight) {println("BTN 4 Acrivated");}
}//End mousePressed
//
//End MAIN Program
