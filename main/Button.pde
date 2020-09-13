class Button {

  int button_posX;
  int button_posY;
  
  Button (int posX, int posY){
    button_posX = posX;
    button_posY = posY;
  }
  
  void write(String s){
  textAlign(CENTER);
  textSize(40);
  fill(0, 0, 0);
  text(s, button_posX, button_posY);
  }
};
