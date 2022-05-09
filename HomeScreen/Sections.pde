void sec2() {
  quitButton();
  restartButton();
}
//
void sec1() {
  
  //box5Text();
  button1();
  //line(pt6X, pt6Y, pt7X, pt7Y); //because the pic overlaps the border
  //line(pt6X, pt6Y, pt10X, pt10Y);
  //line(pt10X, pt10Y, pt11X, pt11Y); //the button overlaps the lines too
}
//
void sec3()
{
  if (sec3on == true){
  image(pic3, ptX[3], ptY[3], rectWidth, rectHeight);
  line(ptX[3], ptY[3],ptX[4], ptY[4]);
  line(ptX[3], ptY[3],ptX[7], ptY[7]);
  button3();}
}
//
void sec4()
{
  if (sec4on == true){
  image(pic4, ptX[7], ptY[7], rectWidth, rectHeight);
  line(ptX[7], ptY[7],ptX[8], ptY[8]);
  line(ptX[7], ptY[7],ptX[11], ptY[11]);
  button4();}
}
//
void sec5()
{
  if ( sec5on == true){
  image(pic5, ptX[11], ptY[11], rectWidth, rectHeight);
  line(ptX[11], ptY[11],ptX[12], ptY[12]);
  line(ptX[11], ptY[11],ptX[15], ptY[15]);
  button5();}
}
//
void sec6()
{
  if ( sec6on == true){
  image(pic0, ptX[10], ptY[10], rectWidth, rectHeight);
  line(ptX[10], ptY[10],ptX[11], ptY[11]);
  line(ptX[10], ptY[10],ptX[14], ptY[14]);
  button6();}
}
//
void sec7()
{
  if ( sec7on == true){
  image(pic0, ptX[9], ptY[9], rectWidth, rectHeight);
  line(ptX[9], ptY[9],ptX[10], ptY[10]);
  line(ptX[9], ptY[9],ptX[13], ptY[13]);
  button7();}
}
//
void sec8()
{
  if ( sec8on == true){
  image(pic0, ptX[5], ptY[5], rectWidth, rectHeight);
  line(ptX[5], ptY[5],ptX[6], ptY[6]);
  line(ptX[5], ptY[5],ptX[9], ptY[9]);
  button8();}
}
//
void sec9()
{
  if ( sec9on == true){
  image(pic0, ptX[1], ptY[1], rectWidth, rectHeight);
  line(ptX[1], ptY[1],ptX[2], ptY[2]);
  line(ptX[1], ptY[1],ptX[5], ptY[5]);
  button9();}
}
