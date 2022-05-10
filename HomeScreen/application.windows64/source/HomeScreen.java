import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class HomeScreen extends PApplet {

//Global Variables
int black=0xff000000, resetWhite=0xffFFFFFF, red=0xffFF5439, gray = 0xffACABAD; //Not night mode (lots of Blue)
int yellow=0xffFFFF00, pink=0xffFF90F0, brown=0xffBC7400;
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
public void setup()
{
   //fillScreen(); //displayWidth, displayHeight
  display();
  population();
  //
}//End setup
//
public void draw() {
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
public void keyPressed() {
}//End keyPressed
//
public void mousePressed() {
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

public void quitButton() {
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
public void restartButton() {
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
  public void button1() {
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
public void button3() {
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
public void button4() {
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
public void button5() {
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
public void button6() {
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
public void button7() {
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
public void button8() {
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
public void button9() {
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
int appWidth, appHeight;
//
public void display() {
  //Display Geometry
  println( width, height, displayWidth, displayHeight );
  //Swap display key variables for testing
  appWidth = width; //displayWidth
  appHeight = height; //displayHeight
  String ls="Landscape or Square", p="portrait", DO="Display Orientation:", instruct="Turn Your Phone";
  String orientation = ( appWidth >= appHeight ) ? ls : p ; 
  println (DO, orientation);
  if ( orientation==ls ) {
    println("Good to Go");
  } else { //Break our app if not landscape
    println(instruct);
    appWidth = appWidth*0; //displayWidth
    appHeight = appHeight*0; //displayHeight
  } 
  println( "App Width:", appWidth, "\tApp Height:", appHeight );
  //
}//End display
public void sec2() {
  quitButton();
  restartButton();
}
//
public void sec1() {
  
  //box5Text();
  button1();
  //line(pt6X, pt6Y, pt7X, pt7Y); //because the pic overlaps the border
  //line(pt6X, pt6Y, pt10X, pt10Y);
  //line(pt10X, pt10Y, pt11X, pt11Y); //the button overlaps the lines too
}
//
public void sec3()
{
  if (sec3on == true){
  image(pic3, ptX[3], ptY[3], rectWidth, rectHeight);
  line(ptX[3], ptY[3],ptX[4], ptY[4]);
  line(ptX[3], ptY[3],ptX[7], ptY[7]);
  button3();}
}
//
public void sec4()
{
  if (sec4on == true){
  image(pic4, ptX[7], ptY[7], rectWidth, rectHeight);
  line(ptX[7], ptY[7],ptX[8], ptY[8]);
  line(ptX[7], ptY[7],ptX[11], ptY[11]);
  button4();}
}
//
public void sec5()
{
  if ( sec5on == true){
  image(pic5, ptX[11], ptY[11], rectWidth, rectHeight);
  line(ptX[11], ptY[11],ptX[12], ptY[12]);
  line(ptX[11], ptY[11],ptX[15], ptY[15]);
  button5();}
}
//
public void sec6()
{
  if ( sec6on == true){
  image(pic6, ptX[10], ptY[10], rectWidth, rectHeight);
  line(ptX[10], ptY[10],ptX[11], ptY[11]);
  line(ptX[10], ptY[10],ptX[14], ptY[14]);
  button6();}
}
//
public void sec7()
{
  if ( sec7on == true){
  image(pic7, ptX[9], ptY[9], rectWidth, rectHeight);
  line(ptX[9], ptY[9],ptX[10], ptY[10]);
  line(ptX[9], ptY[9],ptX[13], ptY[13]);
  button7();}
}
//
public void sec8()
{
  if ( sec8on == true){
  image(pic0, ptX[5], ptY[5], rectWidth, rectHeight);
  line(ptX[5], ptY[5],ptX[6], ptY[6]);
  line(ptX[5], ptY[5],ptX[9], ptY[9]);
  button8();}
}
//
public void sec9()
{
  if ( sec9on == true){
  image(pic9, ptX[1], ptY[1], rectWidth, rectHeight);
  line(ptX[1], ptY[1],ptX[2], ptY[2]);
  line(ptX[1], ptY[1],ptX[5], ptY[5]);
  button9();}
}
public void test(){
  if ( mouseX>=buttonX[1] && mouseX<=buttonX[1]+buttonWidth[1] && mouseY>=buttonY[1] && mouseY<=buttonY[1]+buttonHeight[1] ) 
  { println("BTN 1 Acrivated"); }
  //
  if ( mouseX>=buttonX[3] && mouseX<=buttonX[3]+buttonWidth[3] && mouseY>=buttonY[3] && mouseY<=buttonY[3]+buttonHeight[3])
  {println("BTN 3 Acrivated");}
  //
  if ( mouseX>=buttonX[4] && mouseX<=buttonX[3]+buttonWidth[4] && mouseY>=buttonY[4] && mouseY<=buttonY[4]+buttonHeight[4]) 
  {println("BTN 4 Acrivated");}
  //
  if ( mouseX>=buttonX[5] && mouseX<=buttonX[5]+buttonWidth[5] && mouseY>=buttonY[5] && mouseY<=buttonY[5]+buttonHeight[5]) 
  {println("BTN 5 Acrivated");}
  //
  if ( mouseX>=buttonX[6] && mouseX<=buttonX[6]+buttonWidth[6] && mouseY>=buttonY[6] && mouseY<=buttonY[6]+buttonHeight[6]) 
  {println("BTN 6 Acrivated");}
  //
  if ( mouseX>=buttonX[7] && mouseX<=buttonX[7]+buttonWidth[7] && mouseY>=buttonY[7] && mouseY<=buttonY[7]+buttonHeight[7]) 
  {println("BTN 7 Acrivated");}
  //
  if ( mouseX>=buttonX[8] && mouseX<=buttonX[8]+buttonWidth[8] && mouseY>=buttonY[8] && mouseY<=buttonY[8]+buttonHeight[8]) 
  {println("BTN 8 Acrivated");}
  //
  if ( mouseX>=buttonX[9] && mouseX<=buttonX[9]+buttonWidth[9] && mouseY>=buttonY[9] && mouseY<=buttonY[9]+buttonHeight[9]) 
  {println("BTN 9 Acrivated");}
  //
  if ( mouseX>=restartButtonX && mouseX<=restartButtonX+restartButtonWidth && mouseY>=restartButtonY && mouseY<=restartButtonY+restartButtonHeight) 
  {println("BTN restart Acrivated");}
  if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight) 
  {println("BTN quit Acrivated");}
}
String start= "Start";
String quit= "Quit";
String restart= "Restart";
String next= "Next";
String button9 = "Again?";

public void quitText() {
  textAlign (CENTER, CENTER);
  textFont(titleFont, 25);
  text(quit, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill(black);
  textFont(titleFont);
}

public void restartText() {
  textAlign (CENTER, CENTER);
  textFont(titleFont, 25);
  text(restart, restartButtonX, restartButtonY, restartButtonWidth, restartButtonHeight);
  fill(black);
  textFont(titleFont);
  
}
public void button1Text2() {
  textAlign (CENTER, CENTER);
  textFont(titleFont,25);
  fill(resetWhite);
  text(start, buttonX[1], buttonY[1], buttonWidth[1], buttonHeight[1]);}
public void button1Text() {
  textAlign (CENTER, CENTER);
  textFont(titleFont,25);
  fill(black);
  text(start, buttonX[1], buttonY[1], buttonWidth[1], buttonHeight[1]);
  fill(resetWhite);
}
//

public void sec3Texta() {
  textAlign (CENTER, CENTER);
  textFont(titleFont,25);
  fill(resetWhite);
  text(next, buttonX[3], buttonY[3], buttonWidth[3], buttonHeight[3]);}
public void sec3Textb() {
  textAlign (CENTER, CENTER);
  textFont(titleFont,25);
  fill(red);
  text(next, buttonX[3], buttonY[3], buttonWidth[3], buttonHeight[3]);
  fill(resetWhite);}
  //
public void sec4Texta() {
  textAlign (CENTER, CENTER);
  textFont(titleFont,25);
  fill(resetWhite);
  text(next, buttonX[4], buttonY[4], buttonWidth[4], buttonHeight[4]);}
public void sec4Textb() {
  textAlign (CENTER, CENTER);
  textFont(titleFont,25);
  fill(red);
  text(next, buttonX[4], buttonY[4], buttonWidth[4], buttonHeight[4]);
  fill(resetWhite);}
  //
public void sec5Texta() {
  textAlign (CENTER, CENTER);
  textFont(titleFont,25);
  fill(resetWhite);
  text(next, buttonX[5], buttonY[5], buttonWidth[5], buttonHeight[5]);}
public void sec5Textb() {
  textAlign (CENTER, CENTER);
  textFont(titleFont,25);
  fill(red);
  text(next, buttonX[5], buttonY[5], buttonWidth[5], buttonHeight[5]);
  fill(resetWhite);}
  //
public void sec6Texta() {
  textAlign (CENTER, CENTER);
  textFont(titleFont,25);
  fill(resetWhite);
  text(next, buttonX[6], buttonY[6], buttonWidth[6], buttonHeight[6]);}
public void sec6Textb() {
  textAlign (CENTER, CENTER);
  textFont(titleFont,25);
  fill(red);
  text(next, buttonX[6], buttonY[6], buttonWidth[6], buttonHeight[6]);
  fill(resetWhite);}
  //
public void sec7Texta() {
  textAlign (CENTER, CENTER);
  textFont(titleFont,25);
  fill(resetWhite);
  text(next, buttonX[7], buttonY[7], buttonWidth[7], buttonHeight[7]);}
public void sec7Textb() {
  textAlign (CENTER, CENTER);
  textFont(titleFont,25);
  fill(red);
  text(next, buttonX[7], buttonY[7], buttonWidth[7], buttonHeight[7]);
  fill(resetWhite);}
  //
public void sec8Texta() {
  textAlign (CENTER, CENTER);
  textFont(titleFont,25);
  fill(resetWhite);
  text(next, buttonX[8], buttonY[8], buttonWidth[8], buttonHeight[8]);}
public void sec8Textb() {
  textAlign (CENTER, CENTER);
  textFont(titleFont,25);
  fill(red);
  text(next, buttonX[8], buttonY[8], buttonWidth[8], buttonHeight[8]);
  fill(resetWhite);}
  //
public void sec9Texta() {
  textAlign (CENTER, CENTER);
  textFont(titleFont,25);
  fill(resetWhite);
  text(button9, buttonX[9], buttonY[9], buttonWidth[9], buttonHeight[9]);}
public void sec9Textb() {
  textAlign (CENTER, CENTER);
  textFont(titleFont,25);
  fill(red);
  text(button9, buttonX[9], buttonY[9], buttonWidth[9], buttonHeight[9]);
  fill(resetWhite);}
public void points() {
  ellipse(ptX[1], ptY[1], ptD, ptD);
  ellipse(ptX[2], ptY[2], ptD, ptD);
  ellipse(ptX[3], ptY[3], ptD, ptD);
  ellipse(ptX[5], ptY[5], ptD, ptD);
  ellipse(ptX[6], ptY[6], ptD, ptD);
  ellipse(ptX[7], ptY[7], ptD, ptD);
  ellipse(ptX[9], ptY[9], ptD, ptD);
  ellipse(ptX[10], ptY[10], ptD, ptD);
  ellipse(ptX[11], ptY[11], ptD, ptD);
  ellipse(ptX[4], ptY[4], ptD, ptD);
  ellipse(ptX[8], ptY[8], ptD, ptD);
  ellipse(ptX[12], ptY[12], ptD, ptD);
  ellipse(ptX[13], ptY[13], ptD, ptD);
  ellipse(ptX[14], ptY[14], ptD, ptD);
  ellipse(ptX[15], ptY[15], ptD, ptD);
  ellipse(ptX[16], ptY[16], ptD, ptD);
}

public void rects() {
  rect(ptX[1], ptY[1], rectWidth, rectHeight);
  rect(ptX[2], ptY[2], rectWidth, rectHeight);
  rect(ptX[3], ptY[3], rectWidth, rectHeight);
  rect(ptX[5], ptY[5], rectWidth, rectHeight);
  rect(ptX[6], ptY[6], rectWidth, rectHeight);
  rect(ptX[7], ptY[7], rectWidth, rectHeight);
  rect(ptX[9], ptY[9], rectWidth, rectHeight);
  rect(ptX[10], ptY[10], rectWidth, rectHeight);
  rect(ptX[11], ptY[11], rectWidth, rectHeight);
}
public void population(){
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
  buttonX[1] = rectWidth/2+appWidth/3.5f;
  buttonY[1] = rectHeight/2+appHeight/3.5f;
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
  public void settings() {  size(1280, 720); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "HomeScreen" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
