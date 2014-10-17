class Orb {


  float dropSpeed;
  float x;
  float y = 10;
  float place;
  int shade;
  int radius;
  int land;
  color ocolor;

  Orb(float place, float Oy, color _color) {
    x = place;
    y = Oy;
    dropSpeed = y + 1;
    ocolor = _color;
    radius = 30;
  }



  void display () {
    fill (ocolor);
    noStroke();
    ellipse (x, y, radius, radius); 
    y = y + dropSpeed;
    if (dropSpeed >= 480 || y >= 480) {
      y = 480;
      dropSpeed = 0;
    }
  }





  void Stack (Orb newOrb) {
    if (dist(x, y, newOrb.x, newOrb.y) <= radius) {
      println("stacked");
    }
  }
}

