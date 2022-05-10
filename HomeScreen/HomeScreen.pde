//Global Variables
color black=#000000, resetWhite=#FFFFFF, red=#FF5439, gray = #ACABAD; //Not night mode (lots of Blue)
color yellow=#FFFF00, pink=#FF90F0, brown=#BC7400;
float rectWidth, rectHeight, ptD;
int numberOfPoints = 17;
float[] ptX = new float[numberOfPoints];
float[] ptY = new float[numberOfPoints];
int numberofButtons = 12;
float[] buttonX = new float[numberofButtons];
float[] buttonY = new float[numberofButtons];
float[] buttonWidth = new float[numberofButtons];
float[] buttonHeight = new float[numberofButtons];
Boolean turnOnYellow=false, turnOnPink=false, turnOnBrown=false;
PFont titleFont;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight, restartButtonX, restartButtonY, restartButtonWidth, restartButtonHeight;
PImage pic0, pic3, pic4, pic5, pic6, pic7, pic9;
Boolean sec3on=false, sec4on=false, sec5on=false, sec6on=false, sec7on=false, sec8on=false, sec9on=false;
//
void setup()
{
  size(1280, 720); //fillScreen(); //displayWidth, displayHeight
  display();
  population();
  //
}//End setup
//
void draw() {
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
  //
  fill(resetWhite);
  points();
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  //test();
  if (mouseX>=buttonX[1] && mouseX<=buttonX[1]+buttonWidth[1] && mouseY>=buttonY[1] && mouseY<=buttonY[1]+buttonHeight[1]) sec3on = true;
  if (mouseX>=buttonX[3] && mouseX<=buttonX[3]+buttonWidth[3] && mouseY>=buttonY[3] && mouseY<=buttonY[3]+buttonHeight[3]) sec4on = true;
  if (mouseX>=buttonX[4] && mouseX<=buttonX[4]+buttonWidth[4] && mouseY>=buttonY[4] && mouseY<=buttonY[4]+buttonHeight[4]) sec5on = true;
  if (mouseX>=buttonX[5] && mouseX<=buttonX[5]+buttonWidth[5] && mouseY>=buttonY[5] && mouseY<=buttonY[5]+buttonHeight[5]) sec6on = true;
  if (mouseX>=buttonX[6] && mouseX<=buttonX[6]+buttonWidth[6] && mouseY>=buttonY[6] && mouseY<=buttonY[6]+buttonHeight[6]) sec7on = true;
  if (mouseX>=buttonX[7] && mouseX<=buttonX[7]+buttonWidth[7] && mouseY>=buttonY[7] && mouseY<=buttonY[7]+buttonHeight[7]) sec8on = true;
  if (mouseX>=buttonX[8] && mouseX<=buttonX[8]+buttonWidth[8] && mouseY>=buttonY[8] && mouseY<=buttonY[8]+buttonHeight[8]) sec9on = true;
  
  
  if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight) exit();
  if ( mouseX>=restartButtonX && mouseX<=restartButtonX+restartButtonWidth && mouseY>=restartButtonY && mouseY<=restartButtonY+restartButtonHeight) {
    sec3on = false; sec4on=false; sec5on=false; sec6on=false; sec7on=false; sec8on=false; sec9on=false;}
  if ( mouseX>=buttonX[9] && mouseX<=buttonX[9]+buttonWidth[9] && mouseY>=buttonY[9] && mouseY<=buttonY[9]+buttonHeight[9]) 
   {sec3on = true; sec4on=false; sec5on=false; sec6on=false; sec7on=false; sec8on=false; sec9on=false;}
}
  //
//}//End mousePressed
//
//End MAIN Program
