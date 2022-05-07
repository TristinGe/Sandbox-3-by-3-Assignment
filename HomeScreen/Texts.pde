String start= "Start";
String quit= "Quit";
String restart= "Restart";
String next= "Next";

void quitText() {
  textAlign (CENTER, CENTER);
  textFont(titleFont, 25);
  text(quit, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill(black);
  textFont(titleFont);
}

void restartText() {
  textAlign (CENTER, CENTER);
  textFont(titleFont, 25);
  text(restart, restartButtonX, restartButtonY, restartButtonWidth, restartButtonHeight);
  fill(black);
  textFont(titleFont);
  
}
void button1Text2() {
  textAlign (CENTER, CENTER);
  textFont(titleFont,25);
  fill(resetWhite);
  text(start, buttonX[1], buttonY[1], buttonWidth[1], buttonHeight[1]);}
void button1Text() {
  textAlign (CENTER, CENTER);
  textFont(titleFont,25);
  fill(black);
  text(start, buttonX[1], buttonY[1], buttonWidth[1], buttonHeight[1]);
  fill(resetWhite);
}
//
void sec2Texta() {
  textAlign (CENTER, CENTER);
  textFont(titleFont,25);
  fill(resetWhite);
  text(next, buttonX[2], buttonY[2], buttonWidth[2], buttonHeight[2]);}
void sec2Textb() {
  textAlign (CENTER, CENTER);
  textFont(titleFont,25);
  fill(black);
  text(next, buttonX[2], buttonY[2], buttonWidth[2], buttonHeight[2]);
  fill(resetWhite);}
  //
void sec3Texta() {
  textAlign (CENTER, CENTER);
  textFont(titleFont,25);
  fill(resetWhite);
  text(next, buttonX[3], buttonY[3], buttonWidth[3], buttonHeight[3]);}
void sec3Textb() {
  textAlign (CENTER, CENTER);
  textFont(titleFont,25);
  fill(black);
  text(next, buttonX[3], buttonY[3], buttonWidth[3], buttonHeight[3]);
  fill(resetWhite);}
  //
void sec4Texta() {
  textAlign (CENTER, CENTER);
  textFont(titleFont,25);
  fill(resetWhite);
  text(next, buttonX[4], buttonY[4], buttonWidth[4], buttonHeight[4]);}
void sec4Textb() {
  textAlign (CENTER, CENTER);
  textFont(titleFont,25);
  fill(black);
  text(next, buttonX[4], buttonY[4], buttonWidth[4], buttonHeight[4]);
  fill(resetWhite);}
