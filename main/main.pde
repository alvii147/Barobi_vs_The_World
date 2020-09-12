Constants myConstants;

int BarobiTimer;
Barobi myBarobi;
Background myBackground;
Suppository mySuppository;
Zafirah myZafirah;
Money myMoney;

float magnitude(int x1, int y1, int x2, int y2)
{
  float mag = sqrt(pow(x1 - x2, 2) + pow(y1 - y2, 2));
  return mag;
}

void setup()
{ 
  size(1280, 720);
  myConstants = new Constants();
  BarobiTimer = 0;
  myBarobi = new Barobi(myConstants.BAROBI_INIT_POS_X, myConstants.BAROBI_INIT_POS_Y, myConstants.BAROBI_SCALE);
  myBackground = new Background(1);
  mySuppository = new Suppository(myConstants.SUP_INIT_POS_X, myConstants.SUP_INIT_POS_Y, myConstants.SUP_SCALE, myConstants.SUP_INIT_VEL);
  myZafirah = new Zafirah(myConstants.ZAF_INIT_POS_X, myConstants.ZAF_INIT_POS_Y, myConstants.ZAF_SCALE, myConstants.ZAF_INIT_VEL);
  myMoney = new Money(myConstants.MONEY_INIT_POS_X, myConstants.MONEY_INIT_POS_Y, myConstants.MONEY_SCALE, myConstants.MONEY_INIT_VEL);
}

void draw()
{
  background(130, 35, 12);
  
  myBackground.display();
  myBarobi.display();
  mySuppository.display();
  myZafirah.display();
  myMoney.display();
  
  if(BarobiTimer > 10)
  {
    myBarobi.incrementFrame();
    BarobiTimer = 0;
  }
  if(mySuppository.posX < -20)
  {
    mySuppository.posX = myConstants.SUP_INIT_POS_X;
  }
  if(myZafirah.posX < -20)
  {
    myZafirah.posX = myConstants.ZAF_INIT_POS_X;
  }
  if(myMoney.posX < -20)
  {
    myMoney.posX = myConstants.MONEY_INIT_POS_X;
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
