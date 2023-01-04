String txt = "";
void setup(){
  size(800, 350);
  
  background(255);
  
}
void draw(){
  float ww = 0;
  background(255);
  for (int i = 0; i < txt.length(); i++) {
    char c = txt.charAt(i);
    if(c>='A' && c<='Z'){
      textSize(floor(100));
      fill(252,3,99);
    }
    else{
      if(c>='a' && c<='z'){
        textSize(floor(45));
        fill(203,0,290);
      }
      else{
        textSize(floor(75));
        fill(89,104,147);
      }
    }
    text(c, ww, 150);
    ww += textWidth(c);
  }
}

void keyPressed() {
  if (key == BACKSPACE) {
    if (txt.length() > 0) {
      txt = txt.substring(0, txt.length()-1);
    }
  } else if ((textWidth(txt+key) < width) && (key<='z' && key>='a' 
             || key<='Z' && key>='A' || key<='9' && key>='0') || key==' ' || key=='?'|| key=='!'){
                txt = txt + key;
  }
}
