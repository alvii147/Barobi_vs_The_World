class Suppository{
  
  int posX;
  int posY;
  PImage sup;
  float scale;
  
  Suppository(int sup_posX, int sup_posY, float scaleinit) {
  posX = sup_posX;
  posY = sup_posY;
  sup = new PImage();
  sup = loadImage("img/sup.png");
  scale = scaleinit;
  }
  
  void display(){
    push();
    translate(posX, posY);
    scale(scale);
    imageMode(CENTER);
    image(sup, posX, posY);
    pop();
    
    posX = posX - 10;
    
  }
};
