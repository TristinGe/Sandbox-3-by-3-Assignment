void population(){
  titleFont = createFont("Arial", 50);
  //
  //Population
  rectWidth = appWidth*1/3;
  rectHeight = appHeight*1/3;
  ptD = appWidth*1/50;
  //
  ptX[1] = ptX[5] = ptX[9] = ptX[13] = appWidth*0;
  ptX[2] = ptX[6] = ptX[10] = ptX[14] = appWidth*1/3;
  ptX[3] = ptX[7] = ptX[11] = ptX[15] = appWidth*2/3;
  ptX[4] = ptX[8] = ptX[12] = ptX[16] = appWidth*3/3;
  //
  ptY[1] = ptY[2] = ptY[3] = ptY[4] = appHeight*0;
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
  //restart
  restartButtonX = rectWidth*5/4;
  restartButtonY = rectHeight*5/9;
  restartButtonWidth = rectWidth*1/2;
  restartButtonHeight = rectHeight*1/3;
  //
  //3
  buttonX[3] = appWidth*10/12-appWidth/28;//section 2
  buttonY[3] = appHeight/4;
  buttonWidth[3] = appWidth/14;
  buttonHeight[3] = appHeight/14;
  //
  //4
  buttonX[4] = appWidth*8/12+appWidth/35;//section 3
  buttonY[4] = appHeight*7/12;
  buttonWidth[4] = appWidth/14;
  buttonHeight[4] = appHeight/14;
  //
  //5
  buttonX[5] = appWidth*10/12;//section 4
  buttonY[5] = appHeight*11/12;
  buttonWidth[5] = appWidth/14;
  buttonHeight[5] = appHeight/14;
  //
  //6
  buttonX[6] = appWidth*6/12+appWidth/24;//section 4
  buttonY[6] = appHeight*11/12;
  buttonWidth[6] = appWidth/14;
  buttonHeight[6] = appHeight/14;
  //
  //7
  buttonX[7] = appWidth/12-appWidth/20;//section 4
  buttonY[7] = appHeight*11/12;
  buttonWidth[7] = appWidth/14;
  buttonHeight[7] = appHeight/14;
  //
  //8
  buttonX[8] = appWidth/12+appWidth/28;//section 4
  buttonY[8] = appHeight*7/12;
  buttonWidth[8] = appWidth/14;
  buttonHeight[8] = appHeight/14;
  //
  //9
  buttonX[9] = appWidth/30;//section 4
  buttonY[9] = appHeight/26;
  buttonWidth[9] = appWidth/14;
  buttonHeight[9] = appHeight/14;
  //
  pic0 = loadImage ("DIF.jpg");//1920*1080
  pic3 = loadImage ("SEEDD.jpg");//1920*1080
  pic4 = loadImage ("00.jpg");//1920*1080
  pic5 = loadImage ("DELTA.jpg");//800*477
  pic6 = loadImage ("YukiKaze.jpg");//800*477
  pic7 = loadImage ("aldnoahzero.png");//1280*720
  pic9 = loadImage ("DieNeueThese.jpg");//550*323
}
