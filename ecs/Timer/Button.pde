class Button {
  // Member Varibles
  int x, y, w, h;
  String label;
  
  // Constructor
  Button(int x, int y, int w, int h, String label){
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.label = label;
  }
  
  void display () {
   if(isMouseOver ()) {
    fill(80);
  } else {
    fill(50);
  }
    rectMode(CENTER);
    rect (x, y, w, h, 5);
    fill(255);
    textAlign(CENTER, CENTER);
    textSize(22);
    text(label, x, y);
  }
  
  boolean isMouseOver() {
    return mouseX > x-w/2 && mouseX < x+w/2;
  }
  
  boolean wasClicked (){
    return true;
  }
  
  
}
