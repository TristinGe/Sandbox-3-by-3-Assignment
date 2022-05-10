int appWidth, appHeight;
//
void display() {
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
