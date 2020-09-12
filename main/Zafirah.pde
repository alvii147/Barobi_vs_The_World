class Zafirah {

int posX;
int posY;
PImage zaf;
float scale;

  Zafirah (int zaf_posX, int zaf_posY, float scaleinit) {
  posX = zaf_posX;
  posY = zaf_posY;
  zaf = new PImage();
  zaf = loadImage("img/zafirah.png");
  scale = scaleinit;
  }
  
  void display(){
    push();
    translate(posX, posY);
    scale(scale);
    imageMode(CENTER);
    image(zaf, posX, posY);
    pop();
    
    posX = posX - 15;
    
  }
};
