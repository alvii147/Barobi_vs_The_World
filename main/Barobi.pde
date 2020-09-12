class Barobi
{
  int posX;
  int posY;
  PImage[] imgs;
  int frame;
  float scale;
  
  Barobi(int posXinit, int posYinit, float scaleinit)
  {
    posX = posXinit;
    posY = posYinit;
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
    scale(scale);
    imageMode(CENTER);
    image(imgs[frame], posX, posY);
    pop();
  }
  
  void incrementFrame()
  {
    frame = (frame + 1) % 4;
  }
};
