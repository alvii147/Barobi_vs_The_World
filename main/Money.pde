class Money {

  int posX;
  int posY;
  PImage money;
  float scale;
  int money_vel;
  int dis;
  
  Money(int money_posX, int money_posY, float money_scaleinit, int money_initvel){
  posX = money_posX;
  posY = money_posY;
  money = new PImage();
  money = loadImage("img/money.png");
  scale = money_scaleinit;
  money_vel = money_initvel;
  dis = 1;
  }
  
  void display(){
    push();
    translate(posX, posY);
    scale(scale);
    imageMode(CENTER);
    if(dis == 1)
    {
      image(money, posX, posY);
    }
    pop();
    
    if(posX > -50)
    {
      posX = posX - money_vel;
    }
  }
};
