int BAROBI_INIT_POS_X;
int BAROBI_INIT_POS_Y;
float BAROBI_INIT_SCALE;

int BarobiTimer;
Barobi myBarobi;
Background myBackground;
Suppository mySuppository;
Zafirah myZafirah;

float magnitude(int x1, int y1, int x2, int y2)
{
  float mag = sqrt(pow(x1 - x2, 2) + pow(y1 - y2, 2));
  return mag;
}

void setup()
{ 
  size(1280, 720);
  
  BAROBI_INIT_POS_X = 100;
  BAROBI_INIT_POS_Y = height - 300;
  BAROBI_INIT_SCALE = 0.3;
  
  BarobiTimer = 0;
  myBarobi = new Barobi(BAROBI_INIT_POS_X, BAROBI_INIT_POS_Y, BAROBI_INIT_SCALE);
  myBackground = new Background(1);
  mySuppository = new Suppository(width, height - 250, 0.15);
  myZafirah = new Zafirah(width, 200, 0.3);
}

void draw()
{
  background(130, 35, 12);
  myBackground.display();
  myBarobi.display();
  mySuppository.display();
  myZafirah.display();
  if(BarobiTimer > 10)
  {
    myBarobi.incrementFrame();
    BarobiTimer = 0;
  }
  if(mySuppository.posX < -20)
  {
    mySuppository.posX = width;
  }
  if(myZafirah.posX < -20)
  {
    myZafirah.posX = width;
  }
  BarobiTimer++;
  
  float mag = magnitude(myBarobi.posX, myBarobi.posY, myZafirah.posX, myZafirah.posY);
  if(mag < 100)
  {
    println("COLLISION");
  }
  else
  {
    println("");
  }
}

void keyReleased()
{
  if(key == ' ')
  {
    myBarobi.jump();
  }
}
