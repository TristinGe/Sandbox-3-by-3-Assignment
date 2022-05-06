
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
