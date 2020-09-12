class Background
{
  PImage img;
  int posX;
  int posY;
  float scale;
  
  Background(float scaleInit)
  {
    img = new PImage();
    img = loadImage("img/background.jpg");
    posX = 0;
    posY = 0;
    scale = scaleInit;
  }
  
  void display()
  {
    image(img, posX, posY);
    posX -= 12;
    if(posX < -width)
    {
      posX = 0;
    }
  }
};
