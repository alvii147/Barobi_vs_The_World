int BAROBI_INIT_POS_X;
int BAROBI_INIT_POS_Y;
float BAROBI_INIT_SCALE;

int BarobiTimer;
Barobi myBarobi;
Background myBackground;

void setup()
{
  size(1280, 720);
  
  BAROBI_INIT_POS_X = 400;
  BAROBI_INIT_POS_Y = 1700;
  BAROBI_INIT_SCALE = 0.3;
  
  BarobiTimer = 0;
  myBarobi = new Barobi(BAROBI_INIT_POS_X, BAROBI_INIT_POS_Y, BAROBI_INIT_SCALE);
  myBackground = new Background(1);
}

void draw()
{
  background(130, 35, 12);
  myBackground.display();
  myBarobi.display();
  if(BarobiTimer > 10)
  {
    myBarobi.incrementFrame();
    BarobiTimer = 0;
  }
  BarobiTimer++;
}
