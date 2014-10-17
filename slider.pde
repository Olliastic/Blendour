class slider {



  int selectedButton = 0;
  int swipe;
  int x;
  int r;
  int g;
  int b;



  slider(int _x, int _y) {
    x = _x;
    swipe = _y;
  }

  void display() {
    fill(r,g,b);
    rect(x+25, swipe, 60, 20);
  }
}


