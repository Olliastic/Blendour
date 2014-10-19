class bDrop {

  color bDropShade;
  int r = color(255,0,0);
  int g = color(0, 255, 0);
  int b = color(0, 0, 255);



  bDrop() {
    bDropShade = color(r, g, b);
  }


  void bDrop() {
    stroke(0);
    strokeWeight(5);

    fill(r, g, b);

    rect(10, 10, 380, 510);
  }
}

