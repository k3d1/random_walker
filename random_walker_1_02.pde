pWalker pw;
lnWalker lnw;
triWalker triw;
rectWalker rectw;
plusWalker plusw;

int savedTime;
int death1 = 10000, death2 = death1+death1, death3 = death1+death2, death4 = death1+death3;
//int finalDeath = 50000;
int pauseKey;

void clearScreen(int c){
  background(c);
  //create a walker object
  if(c == 255) {
    pw = new pWalker(0,0,0);
    lnw = new lnWalker(0,0,0);
    triw = new triWalker(0,0,0);
    rectw = new rectWalker(0,0,0);
    plusw = new plusWalker(0,0,0);
  }
  else {
    pw = new pWalker(255,255,255);
    lnw = new lnWalker(255,255,255);
    triw = new triWalker(255,255,255);
    rectw = new rectWalker(255,255,255);
    plusw = new plusWalker(255,255,255);
  }
  
  savedTime=millis();
}

void setup() {
  size(displayWidth,displayHeight);
  clearScreen(0);
  }

void draw() {
  //run the walker object
  pw.step(); pw.render();
  //zaman zaman hmm o zaman
  int passedTime=millis()-savedTime;
  if(passedTime>death1){clearScreen(0); lnw.step(); lnw.render();}
  if(passedTime>death2){clearScreen(0); triw.step(); triw.render();}
  //if(passedTime>death3){clearScreen(255);}
  //if(passedTime>death4){clearScreen(0);}
  //if(savedTime>finalDeath){passedTime=0;}
}

void mousePressed() {noLoop();}
void mouseReleased() {loop();}