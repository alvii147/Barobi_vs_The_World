int BAROBI_INIT_POS_X;
int BAROBI_INIT_POS_Y;
float BAROBI_INIT_SCALE;

int BarobiTimer;
Barobi myBarobi;
Background myBackground;
Suppository mySuppository;

void setup()
{
  size(1280, 720);
  
  BAROBI_INIT_POS_X = 100;
  BAROBI_INIT_POS_Y = height - 300;
  BAROBI_INIT_SCALE = 0.3;
  
  BarobiTimer = 0;
  myBarobi = new Barobi(BAROBI_INIT_POS_X, BAROBI_INIT_POS_Y, BAROBI_INIT_SCALE);
  myBackground = new Background(1);
  mySuppository = new Suppository(width, height - 300, 0.3);
}

void draw()
{
  background(130, 35, 12);
  myBackground.display();
  myBarobi.display();
  mySuppository.display();
  if(BarobiTimer > 10)
  {
    myBarobi.incrementFrame();
    BarobiTimer = 0;
  }
  if(mySuppository.posX < -20)
  {
    mySuppository.posX = width;
  }
  BarobiTimer++;
}

void keyReleased()
{
  if(key == ' ')
  {
    myBarobi.jump();
  }
}
