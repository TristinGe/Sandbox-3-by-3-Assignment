
void quitButton() {
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight) {
    fill(red);
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

  //
void button3() {
  //rect(buttonX[3], buttonY[3], buttonWidth[3], buttonHeight[3]);
  if ( mouseX>=buttonX[3] && mouseX<=buttonX[3]+buttonWidth[3] && mouseY>=buttonY[3] && mouseY<=buttonY[3]+buttonHeight[3]) {
    fill(black);
    //rect(buttonX[3], buttonY[3], buttonWidth[3], buttonHeight[3]);
    fill(resetWhite);
    sec3Texta();
  } else {
    stroke(resetWhite);
    fill(resetWhite);
    //rect(buttonX[3], buttonY[3], buttonWidth[3], buttonHeight[3]);
    stroke(black);
    fill(black);
    sec3Textb();
  }
  fill(resetWhite);}
  //
void button4() {
  //rect(buttonX[4], buttonY[4], buttonWidth[4], buttonHeight[4]);
  if ( mouseX>=buttonX[4] && mouseX<=buttonX[4]+buttonWidth[4] && mouseY>=buttonY[4] && mouseY<=buttonY[4]+buttonHeight[4]) {
    fill(black);
    //rect(buttonX[4], buttonY[4], buttonWidth[4], buttonHeight[4]);
    fill(resetWhite);
    sec4Texta();
  } else {
    stroke(resetWhite);
    fill(resetWhite);
    //rect(buttonX[4], buttonY[4], buttonWidth[4], buttonHeight[4]);
    stroke(black);
    fill(black);
    sec4Textb();
  }
  fill(resetWhite);}
  //
void button5() {
  //rect(buttonX[5], buttonY[5], buttonWidth[5], buttonHeight[5]);
  if ( mouseX>=buttonX[5] && mouseX<=buttonX[5]+buttonWidth[5] && mouseY>=buttonY[5] && mouseY<=buttonY[5]+buttonHeight[5]) {
    fill(black);
    //rect(buttonX[5], buttonY[5], buttonWidth[5], buttonHeight[5]);
    fill(resetWhite);
    sec5Texta();
  } else {
    stroke(resetWhite);
    fill(resetWhite);
    //rect(buttonX[5], buttonY[5], buttonWidth[5], buttonHeight[5]);
    stroke(black);
    fill(black);
    sec5Textb();
  }
  fill(resetWhite);}
  //
void button6() {
  //rect(buttonX[6], buttonY[6], buttonWidth[6], buttonHeight[6]);
  if ( mouseX>=buttonX[6] && mouseX<=buttonX[6]+buttonWidth[6] && mouseY>=buttonY[6] && mouseY<=buttonY[6]+buttonHeight[6]) {
    fill(black);
    //rect(buttonX[6], buttonY[6], buttonWidth[6], buttonHeight[6]);
    fill(resetWhite);
    sec6Texta();
  } else {
    stroke(resetWhite);
    fill(resetWhite);
    //rect(buttonX[6], buttonY[6], buttonWidth[6], buttonHeight[6]);
    stroke(black);
    fill(black);
    sec6Textb();
  }
  fill(resetWhite);}
  //
void button7() {
  //rect(buttonX[7], buttonY[7], buttonWidth[7], buttonHeight[7]);
  if ( mouseX>=buttonX[7] && mouseX<=buttonX[7]+buttonWidth[7] && mouseY>=buttonY[7] && mouseY<=buttonY[7]+buttonHeight[7]) {
    fill(black);
    //rect(buttonX[7], buttonY[7], buttonWidth[7], buttonHeight[7]);
    fill(resetWhite);
    sec7Texta();
  } else {
    stroke(resetWhite);
    fill(resetWhite);
    //rect(buttonX[7], buttonY[7], buttonWidth[7], buttonHeight[7]);
    stroke(black);
    fill(black);
    sec7Textb();
  }
  fill(resetWhite);}
  //
void button8() {
  //rect(buttonX[8], buttonY[8], buttonWidth[8], buttonHeight[8]);
  if ( mouseX>=buttonX[8] && mouseX<=buttonX[8]+buttonWidth[8] && mouseY>=buttonY[8] && mouseY<=buttonY[8]+buttonHeight[8]) {
    fill(black);
    //rect(buttonX[8], buttonY[8], buttonWidth[8], buttonHeight[8]);
    fill(resetWhite);
    sec8Texta();
  } else {
    stroke(resetWhite);
    fill(resetWhite);
    //rect(buttonX[8], buttonY[8], buttonWidth[8], buttonHeight[8]);
    stroke(black);
    fill(black);
    sec8Textb();
  }
  fill(resetWhite);}
  //
void button9() {
  //rect(buttonX[9], buttonY[9], buttonWidth[9], buttonHeight[9]);
  if ( mouseX>=buttonX[9] && mouseX<=buttonX[9]+buttonWidth[9] && mouseY>=buttonY[9] && mouseY<=buttonY[9]+buttonHeight[9]) {
    fill(black);
    //rect(buttonX[9], buttonY[9], buttonWidth[9], buttonHeight[9]);
    fill(resetWhite);
    sec9Texta();
  } else {
    stroke(resetWhite);
    fill(resetWhite);
    //rect(buttonX[9], buttonY[9], buttonWidth[9], buttonHeight[9]);
    stroke(black);
    fill(black);
    sec9Textb();
  }
  fill(resetWhite);}
