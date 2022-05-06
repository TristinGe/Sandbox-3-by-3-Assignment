String start= "Start";
String quit= "Quit";
String restart= "Restart";

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
  textFont(titleFont);
  fill(gray);
  text(start, buttonX[1], buttonY[1], buttonWidth[1], buttonHeight[1]);
  fill(resetWhite);
}
