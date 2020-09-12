class Money {

  int posX;
  int posY;
  PImage money;
  float scale;
  int money_vel;
  
  Money(int money_posX, int money_posY, float money_scaleinit, int money_initvel){
  posX = money_posX;
  posY = money_posY;
  money = new PImage();
  money = loadImage("img/money.png");
  scale = money_scaleinit;
  money_vel = money_initvel;
  }
  
  void display(){
    push();
    translate(posX, posY);
    scale(scale);
    imageMode(CENTER);
    image(money, posX, posY);
    pop();
    
    posX = posX - money_vel;
    
  }
};
