
void quitButton() {
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight) {
    fill(black);
    rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
    fill(resetWhite);
    quitText();
  } else {
    stroke(resetWhite);
    fill(resetWhite);
    rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
    stroke(black);
    fill(black);
    quitText();
  }
  fill(resetWhite);
}
//
void restartButton() {
  rect(restartButtonX, restartButtonY, restartButtonWidth, restartButtonHeight);
  if ( mouseX>=restartButtonX && mouseX<=restartButtonX+restartButtonWidth && mouseY>=restartButtonY && mouseY<=restartButtonY+restartButtonHeight) {
    fill(black);
    rect(restartButtonX, restartButtonY, restartButtonWidth, restartButtonHeight);
    fill(resetWhite);
    restartText();
  } else {
    stroke(resetWhite);
    fill(resetWhite);
    rect(restartButtonX, restartButtonY, restartButtonWidth, restartButtonHeight);
    stroke(black);
    fill(black);
    restartText();
  }
  fill(resetWhite);}
  //
  void button1() {
  rect(buttonX[1], buttonY[1], buttonWidth[1], buttonHeight[1]);
  if ( mouseX>=buttonX[1] && mouseX<=buttonX[1]+buttonWidth[1] && mouseY>=buttonY[1] && mouseY<=buttonY[1]+buttonHeight[1]) {
    fill(black);
    rect(buttonX[1], buttonY[1], buttonWidth[1], buttonHeight[1]);
    button1Text2();
  } else {
    stroke(gray);
    fill(resetWhite);
    rect(buttonX[1], buttonY[1], buttonWidth[1], buttonHeight[1]);
    stroke(black);
    button1Text();
  }
  fill(resetWhite);
}
//
void button2() {
  rect(buttonX[2], buttonY[2], buttonWidth[2], buttonHeight[2]);
  if ( mouseX>=buttonX[2] && mouseX<=buttonX[2]+buttonWidth[2] && mouseY>=buttonY[2] && mouseY<=buttonY[2]+buttonHeight[2]) {
    fill(black);
    rect(buttonX[2], buttonY[2], buttonWidth[2], buttonHeight[2]);
    fill(resetWhite);
    sec2Texta();
  } else {
    stroke(resetWhite);
    fill(resetWhite);
    rect(buttonX[2], buttonY[2], buttonWidth[2], buttonHeight[2]);
    stroke(black);
    fill(black);
    sec2Textb();
  }
  fill(resetWhite);}
  //
void button3() {
  rect(buttonX[3], buttonY[3], buttonWidth[3], buttonHeight[3]);
  if ( mouseX>=buttonX[3] && mouseX<=buttonX[3]+buttonWidth[3] && mouseY>=buttonY[3] && mouseY<=buttonY[3]+buttonHeight[3]) {
    fill(black);
    rect(buttonX[3], buttonY[3], buttonWidth[3], buttonHeight[3]);
    fill(resetWhite);
    sec3Texta();
  } else {
    stroke(resetWhite);
    fill(resetWhite);
    rect(buttonX[3], buttonY[3], buttonWidth[3], buttonHeight[3]);
    stroke(black);
    fill(black);
    sec3Textb();
  }
  fill(resetWhite);}
  //
void button4() {
  rect(buttonX[4], buttonY[4], buttonWidth[4], buttonHeight[4]);
  if ( mouseX>=buttonX[4] && mouseX<=buttonX[4]+buttonWidth[4] && mouseY>=buttonY[4] && mouseY<=buttonY[4]+buttonHeight[4]) {
    fill(black);
    rect(buttonX[4], buttonY[4], buttonWidth[4], buttonHeight[4]);
    fill(resetWhite);
    sec4Texta();
  } else {
    stroke(resetWhite);
    fill(resetWhite);
    rect(buttonX[4], buttonY[4], buttonWidth[4], buttonHeight[4]);
    stroke(black);
    fill(black);
    sec4Textb();
  }
  fill(resetWhite);}
