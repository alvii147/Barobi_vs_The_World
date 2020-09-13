Constants myConstants;

int state;
PImage titleimg;
PImage disappointed;
int Score;

float mag;

int BarobiTimer;
int ObstacleTimer;
int SpeedTimer;

Button myButton;

Barobi myBarobi;
Background myBackground;
Suppository mySuppository;
Zafirah myZafirah;
Money myMoney;
Scoreboard myScoreboard;

int zaf_col;
int mon_col;

float magnitude(int x1, int y1, int x2, int y2)
{
  float mag_val = sqrt(pow(x1 - x2, 2) + pow(y1 - y2, 2));
  return mag_val;
}

void setup()
{ 
  size(1280, 720);
  myConstants = new Constants();
  
  state = 0;
  titleimg = loadImage("img/title.png");
  disappointed = loadImage("img/disappointed.jpg");
  mag = 0;
  
  BarobiTimer = 0;
  ObstacleTimer = 0;
  SpeedTimer = 0;
  
  zaf_col = 0;
  mon_col = 0;
  
  myButton = new Button(width/2, height/2 + 100);
  
  myBarobi = new Barobi(myConstants.BAROBI_INIT_POS_X, myConstants.BAROBI_INIT_POS_Y, myConstants.BAROBI_SCALE);
  myBackground = new Background(1);
  mySuppository = new Suppository(myConstants.SUP_INIT_POS_X, myConstants.SUP_INIT_POS_Y, myConstants.SUP_SCALE, myConstants.SUP_INIT_VEL);
  myZafirah = new Zafirah(myConstants.ZAF_INIT_POS_X, myConstants.ZAF_INIT_POS_Y, myConstants.ZAF_SCALE, myConstants.ZAF_INIT_VEL);
  myMoney = new Money(myConstants.MONEY_INIT_POS_X, myConstants.MONEY_INIT_POS_Y, myConstants.MONEY_SCALE, myConstants.MONEY_INIT_VEL);
  myScoreboard = new Scoreboard(myConstants.SCOREBOARD_INIT_POS_X, myConstants.SCOREBOARD_INIT_POS_Y);
}

void draw()
{
  background(255, 255, 255);
  if(state == 0)
  {
    push();
    scale(1.3);
    image(titleimg, 0, 0);
    pop();
  }
  else if(state == 1)
  {
    myBackground.display();
    myBarobi.display();
    
    mySuppository.display();
    myZafirah.display();
    myMoney.display();
    myScoreboard.write(Score);
    
    if(BarobiTimer > 10)
    {
      myBarobi.incrementFrame();
      BarobiTimer = 0;
    }
    BarobiTimer++;
    
    if(myZafirah.posX <= -50 && ObstacleTimer > 100)
    {
      myZafirah.posX = myConstants.ZAF_INIT_POS_X;
      zaf_col = 0;
      myZafirah.dis = 1;
    }
    else if(mySuppository.posX <= -50 && ObstacleTimer > 200)
    {
      mySuppository.posX = myConstants.SUP_INIT_POS_X;
    }
    else if(myMoney.posX <= -50 && ObstacleTimer > 300)
    {
      myMoney.posX = myConstants.MONEY_INIT_POS_X;
      mon_col = 0;
      myMoney.dis = 1;
      ObstacleTimer = 0;
    }
    ObstacleTimer++;
    
    int rand = int(random(0, 3));
    if(SpeedTimer > 40)
    {
      if(rand == 0)
      {
        myZafirah.zaf_vel++;
      }
      else if(rand == 1)
      {
        myMoney.money_vel++;
      }
      else
      {
        mySuppository.sup_vel++;
      }
      SpeedTimer = 0;
    }
    SpeedTimer++;
    
    mag = magnitude(myBarobi.posX, myBarobi.posY, myZafirah.posX, myZafirah.posY);
    if(mag < 60 && zaf_col == 0)
    {
      Score += 100;
      zaf_col = 1;
      myZafirah.dis = 0;
    }
    
    mag = magnitude(myBarobi.posX, myBarobi.posY, myMoney.posX, myMoney.posY);
    if(mag < 60 && mon_col == 0)
    {
      Score += 50;
      mon_col = 1;
      myMoney.dis = 0;
    }
    
    mag = magnitude(myBarobi.posX, myBarobi.posY, mySuppository.posX, mySuppository.posY);
    if(mag < 100)
    {
      state = 2;
    }
  }
  else if(state == 2)
  {
    push();
    translate(width/2, height/2);
    scale(2.5);
    imageMode(CENTER);
    image(disappointed, 0, 0);
    pop();
    String s = "Dishonour on your whole family\nDishonour on you\nDishonour on your cow\nYour Score: " + str(Score);
    myButton.write(s);
  }
}

void keyReleased()
{
  if(state == 0)
  {
    state = 1;
  }
  else if(state == 1)
  {
    if(key == ' ')
    {
      myBarobi.jump();
    }
  }
}
