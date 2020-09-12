class Zafirah {

  int posX;
  int posY;
  PImage zaf;
  float scale;
  int zaf_vel;
  int dis = 0;

  Zafirah (int zaf_posX, int zaf_posY, float scaleinit, int zafvelinit) {
  posX = zaf_posX;
  posY = zaf_posY;
  zaf = new PImage();
  zaf = loadImage("img/zafirah.png");
  scale = scaleinit;
  zaf_vel = zafvelinit;
  dis = 1;
  }
  
  void display(){
    push();
    translate(posX, posY);
    scale(scale);
    imageMode(CENTER);
    if(dis == 1)
    {
      image(zaf, posX, posY);
    }
    pop();
    
    if(posX > -50)
    {
      posX = posX - zaf_vel;
    }
  }
};
