//Global Variables
color black=#000000, resetWhite=#FFFFFF, red=#FF0000, gray = #ACABAD; //Not night mode (lots of Blue)
color yellow=#FFFF00, pink=#FF90F0, brown=#BC7400;
float rectWidth, rectHeight, ptD;
//Points are organized by row and actaully ... hint-hint ... value
int numberOfPoints = 17;
float[] ptX = new float[numberOfPoints];
float[] ptY = new float[numberOfPoints];
int numberofButtons = 12;//will be 11:quit, reset, and 9 more buttons, 1 per section(3*3)
float[] buttonX = new float[numberofButtons];
float[] buttonY = new float[numberofButtons];
float[] buttonWidth = new float[numberofButtons];
float[] buttonHeight = new float[numberofButtons];
Boolean turnOnYellow=false, turnOnPink=false, turnOnBrown=false;
PFont titleFont;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight, restartButtonX, restartButtonY, restartButtonWidth, restartButtonHeight;
PImage pic1;
Boolean sec1on=false;
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
  //start
  buttonX[1] = rectWidth/2+appWidth/3.5;
  buttonY[1] = rectHeight/2+appHeight/3.5;
  buttonWidth[1] = appWidth/9;
  buttonHeight[1] = appHeight/9;
  //
  //quit
  quitButtonX = rectWidth*5/4;
  quitButtonY = rectHeight*1/9;
  quitButtonWidth = rectWidth*1/2;
  quitButtonHeight = rectHeight*1/3;
  //
  restartButtonX = rectWidth*5/4;
  restartButtonY = rectHeight*5/9;
  restartButtonWidth = rectWidth*1/2;
  restartButtonHeight = rectHeight*1/3;
  //
  //3
  buttonX[3] = appWidth*10/12-appWidth/24;//section 2
  buttonY[3] = appHeight/12;
  buttonWidth[3] = appWidth/12;
  buttonHeight[3] = appHeight/12;
  //
  //4
  buttonX[4] = appWidth*10/12-appWidth/24;//section 3
  buttonY[4] = appHeight*5/12;
  buttonWidth[4] = appWidth/12;
  buttonHeight[4] = appHeight/12;
  //
  //5
  buttonX[5] = appWidth*10/12-appWidth/24;//section 4
  buttonY[5] = appHeight*9/12;
  buttonWidth[5] = appWidth/12;
  buttonHeight[5] = appHeight/12;
  //
  //6
  buttonX[6] = appWidth*5/12+appWidth/24;//section 4
  buttonY[6] = appHeight*9/12;
  buttonWidth[6] = appWidth/12;
  buttonHeight[6] = appHeight/12;
  //
  //7
  buttonX[7] = appWidth/12+appWidth/24;//section 4
  buttonY[7] = appHeight*9/12;
  buttonWidth[7] = appWidth/12;
  buttonHeight[7] = appHeight/12;
  //
  //8
  buttonX[8] = appWidth/12+appWidth/24;//section 4
  buttonY[8] = appHeight*5/12;
  buttonWidth[8] = appWidth/12;
  buttonHeight[8] = appHeight/12;
  //
  //9
  buttonX[9] = appWidth/12+appWidth/24;//section 4
  buttonY[9] = appHeight/12;
  buttonWidth[9] = appWidth/12;
  buttonHeight[9] = appHeight/12;
  //
  pic1 = loadImage ("DIF.jpg");//1920*1080

  

}//End setup
//
void draw() {
  //Rectangles must be 3 by 3
  rects();
  sec2();
  sec1();
  sec3();
  sec4();
  sec5();
  sec6();
  sec7();
  sec8();
  sec9();

  fill(resetWhite);
  //if ( mouseX>=ptX[3] && mouseX<=ptX[3]+rectWidth && mouseY>=ptY[3] && mouseY<=ptY[3]+rectHeight ) {
   // fill(yellow);
   // rect(ptX[3], ptY[3], rectWidth, rectHeight);
 // } else {
 //   fill(black);
 //   rect(ptX[3], ptY[3], rectWidth, rectHeight);
//  }

  fill(resetWhite);
  points();
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  test();
  if (mouseX>=buttonX[1] && mouseX<=buttonX[1]+buttonWidth[1] && mouseY>=buttonY[1] && mouseY<=buttonY[1]+buttonHeight[1]) sec1on = true;
  
  
  if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight) exit();
  if ( mouseX>=restartButtonX && mouseX<=restartButtonX+restartButtonWidth && mouseY>=restartButtonY && mouseY<=restartButtonY+restartButtonHeight) {
    sec1on = false;

  }
}
  //
//}//End mousePressed
//
//End MAIN Program
