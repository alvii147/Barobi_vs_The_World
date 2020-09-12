int BAROBI_INIT_POS_X;
int BAROBI_INIT_POS_Y;
float BAROBI_INIT_SCALE;

int BarobiTimer;
Barobi myBarobi;

void setup()
{
  size(800, 800);
  int BAROBI_INIT_POS_X = 200;
  int BAROBI_INIT_POS_Y = height - 200;
  float BAROBI_INIT_SCALE = 0.5;
  BarobiTimer = 0;
  myBarobi = new Barobi(BAROBI_INIT_POS_X, BAROBI_INIT_POS_Y, BAROBI_INIT_SCALE);
}

void draw()
{
  background(130, 35, 12);
  myBarobi.display();
  if(BarobiTimer > 10)
  {
    myBarobi.incrementFrame();
    BarobiTimer = 0;
  }
  BarobiTimer++;
}
