class Barobi
{
  int posX;
  int posY;
  int initposX;
  int initposY;
  int jumpvel;
  int velY;
  int acc;
  PImage[] imgs;
  int frame;
  float scale;
  
  Barobi(int posXinit, int posYinit, float scaleinit)
  {
    posX = posXinit;
    posY = posYinit;
    initposX = posXinit;
    initposY = posYinit;
    jumpvel = 25;
    velY = 0;
    acc = -1;
    imgs = new PImage[4];
    imgs[0] = loadImage("img/barobi_run_1.png");
    imgs[1] = loadImage("img/barobi_run_2.png");
    imgs[2] = loadImage("img/barobi_run_3.png");
    imgs[3] = loadImage("img/barobi_run_4.png");
    frame = 0;
    scale = scaleinit;
  }
  
  void display()
  {
    push();
    
    posY -= velY;
    if(posY > initposY)
    {
      posY = initposY;
      velY = 0;
    }
    else
    {
      velY += acc;
    }
    
    translate(posX, posY);
    scale(scale);
    imageMode(CENTER);
    image(imgs[frame], posX, posY);
    pop();
  }
  
  void incrementFrame()
  {
    frame = (frame + 1) % 4;
  }
  
  void jump()
  {
    if(posY == initposY)
    {
      velY = jumpvel;
    }
  }
};
