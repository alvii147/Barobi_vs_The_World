class Suppository{
  
  int posX;
  int posY;
  PImage sup;
  float scale;
  
  Suppository(int sup_posX, int sup_posY, float scale) {
  posX = sup_posX;
  posY = sup_posY;
  sup = new PImage();
  sup = loadImage("img/sup.png");
  }
  
  void display(){
    push();
    scale(scale);
    imageMode(CENTER);
    image(sup, posX, posY);
    pop();
    
    
    posX = posX - 10;
    
  }
};
