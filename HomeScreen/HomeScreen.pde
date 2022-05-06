//Global Variables
color black=#000000, resetWhite=#FFFFFF, red=#FF0000, yellow=#FFFF00, pink=#FF90F0, brown=#BC7400, gray = #ACABAD; //Not night mode (lots of Blue)
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
Boolean turnOnYellow=false, turnOnPink=false, turnOnBrown=false;
PFont titleFont;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight, restartButtonX, restartButtonY, restartButtonWidth, restartButtonHeight;
//
void setup()
{
  size(960, 540); //fillScreen(); //displayWidth, displayHeight
  display();
  //

  titleFont = createFont("Arial", 50);
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
  buttonX[1] = rectWidth/2+appWidth/3.5;
  buttonY[1] = rectHeight/2+appHeight/3.5;
  buttonWidth[1] = appWidth/9;
  buttonHeight[1] = appHeight/9;
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
  //
  quitButtonX = rectWidth*5/4;
  quitButtonY = rectHeight*1/9;
  quitButtonWidth = rectWidth*1/2;
  quitButtonHeight = rectHeight*1/3;
  restartButtonX = rectWidth*5/4;
  restartButtonY = rectHeight*5/9;
  restartButtonWidth = rectWidth*1/2;
  restartButtonHeight = rectHeight*1/3;
}//End setup
//
void draw() {
  //Rectangles must be 3 by 3
  rects();
  sec2();
  sec1();
  //
  //Sequential Ordering of Code example
  //Single Line Ifs
  if ( turnOnYellow==true) fill(yellow);
  if ( turnOnPink==true) fill(pink); //Overwrites the yellow
  if ( turnOnBrown==true) fill(brown);

  fill(resetWhite);
  //
  
  //
  fill(yellow);
  
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
  //fill(black);
  //Starting pts for rect() must be 1-9 & filled black
  
  //fill(resetWhite); //Best Practice
  //
  //fill(red);
  //Points for all other ellipses must be red
  
  //fill(resetWhite); //Best Practice
  points();
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  if ( mouseX>=buttonX[1] && mouseX<=buttonX[1]+buttonWidth[1] && mouseY>=buttonY[1] && mouseY<=buttonY[1]+buttonHeight[1] ) 
  {
    println("BTN 1 Acrivated"); 
    if (turnOnYellow==true) {
      turnOnYellow=false;
    } else {
      turnOnYellow=true;
      turnOnPink=false;
      turnOnBrown=false;
    }
    //if (turnOnPink==true) {turnOnPink=false;turnOnYellow=true;}
    //if (turnOnBrown==true) {turnOnBrown=false;turnOnYellow=true;}
  }
  //
  if ( mouseX>=buttonX[2] && mouseX<=buttonX[2]+buttonWidth[2] && mouseY>=buttonY[2] && mouseY<=buttonY[2]+buttonHeight[2]) 
  {
    println("BTN 2 Acrivated");
    if (turnOnPink==true) {
      turnOnPink=false;
    } else {
      turnOnPink=true;
      turnOnBrown=false;
    }
    //if (turnOnBrown==true) {turnOnBrown=false;turnOnPink=true;}
   }
  //
  if ( mouseX>=buttonX[3] && mouseX<=buttonX[3]+buttonWidth[3] && mouseY>=buttonY[3] && mouseY<=buttonY[3]+buttonHeight[3])
  {
    println("BTN 3 Acrivated");
    if (turnOnBrown==true) {
      turnOnBrown=false;
    } else {
      turnOnBrown=true;
    }
  }
  //
  //Button: reset to beginning
  if ( mouseX>=ptX[3] && mouseX<=ptX[3]+rectWidth && mouseY>=ptY[3] && mouseY<=ptY[3]+rectHeight) 
  {
    println("BTN 4 Acrivated"); 
    //if () {} else{}
    turnOnYellow=false; 
    turnOnPink=false;
    turnOnBrown=false;
  }
  //
}//End mousePressed
//
//End MAIN Program
