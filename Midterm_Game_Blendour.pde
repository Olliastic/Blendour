
slider mySlider[];
Orb myOrb;
ArrayList<Orb> myOrbs;
int r;
int g;
int b;
color shaders[];


void setup() {
  size (400, 600);
  myOrbs = new ArrayList<Orb>();
  shaders = new color[27];
  shaders[0] = color(0);
  shaders[1] = color(255, 255, 255);
  shaders[2] = color(255, 0, 0);
  shaders[3] = color(0, 255, 0);
  shaders[4] = color(0, 0, 255);
  shaders[5] = color(128, 255, 255);
  shaders[6] = color(255, 128, 255);
  shaders[7] = color(255, 255, 128);
  shaders[8] = color(128, 128, 255);
  shaders[9] = color(255, 128, 128);
  shaders[10] = color(128, 255, 128);
  shaders[11] = color(128, 0, 0);
  shaders[12] = color(0, 128, 0);
  shaders[13] = color(0, 0, 128);
  shaders[14] = color(255, 128, 0);
  shaders[15] = color(0, 255, 128);
  shaders[16] = color(128, 255, 0);
  shaders[17] = color(255, 0, 128);
  shaders[18] = color(0, 128, 255);
  shaders[19] = color(128, 0, 255);
  shaders[20] = color(128, 128, 128);
  shaders[21] = color(0, 128, 128);
  shaders[22] = color(128, 0, 128);
  shaders[23] = color(128, 128, 0);
  shaders[24] = color(0, 255, 255);
  shaders[25] = color(255, 0, 255);
  shaders[26] = color(255, 255, 0);



  for (int i = 0; i < 27; i++) {
    shaders[i] = color(shaders[int(random(27))]);
  }

  myOrb = new Orb(random(10, 390), 0, shaders[int(random(27))]);

  mySlider = new slider[3];
  for (int i = 0; i < mySlider.length; i ++) {
    mySlider[i] = new slider(i * 150, 560);
  }
}



void keyPressed() {
}

void mouseDragged() {
}

void draw() {

  background(255);

  for (int i = 0; i < mySlider.length; i++) {
    mySlider[i].display();
  }
  for (int i = 0; i < myOrbs.size (); i++) {
    Orb orb = myOrbs.get(i);
    orb.display();
  }
  if (myOrbs.size() > 0) {
    Orb orb = myOrbs.get(myOrbs.size() -1);
    if (orb.y >= 480) {
      newOrb();
    }
  } else {
    newOrb();
  }
}

void newOrb() {
  Orb newOrb = new Orb(random(50, 300), 0, shaders[int(random(27))]);
  myOrbs.add(newOrb);
  
 
 
  
}



