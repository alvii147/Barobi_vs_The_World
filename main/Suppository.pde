class Suppository{
  
  int posX;
  int posY;
  PImage sup;
  float scale;
  int sup_vel;
  
  Suppository(int sup_posX, int sup_posY, float sup_scaleinit, int sup_velinit) {
  posX = sup_posX;
  posY = sup_posY;
  sup_vel = 10;
  sup = new PImage();
  sup = loadImage("img/sup.png");
  scale = sup_scaleinit;
  sup_vel = sup_velinit;
  }
  
  void display(){
    push();
    translate(posX, posY);
    scale(scale);
    imageMode(CENTER);
    image(sup, posX, posY);
    pop();
    

    posX = posX - sup_vel;
    
  }
};
