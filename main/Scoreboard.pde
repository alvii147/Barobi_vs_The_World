class Scoreboard {

  int score_posX;
  int score_posY;
  
  Scoreboard (int posX, int posY){
    score_posX = posX;
    score_posY = posY;
  }
  
  void write(int score){
  String s = str(score);
  textSize(30);
  fill(0, 0, 255);
  text(s, score_posX, score_posY);
  }
};
