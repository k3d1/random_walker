class pWalker { 
  int pRandomX, pRandomY;
  int clrTrigger=7000;
  int r,g,b;
  
  pWalker(int r, int g, int b) {
    this.r = r;
    this.g = g;
    this.b = b;
   //point x and y position
   pRandomX = int(random(100,900));
   pRandomY= int(random(100,500));
  }
  
  void render() {
    stroke(r,g,b);
    
    point(pRandomX,pRandomY);
  }
  
  //randomly move up, down, left, right...
  void step() {
    
    //point walker
    int choice = int(random(4));
    if (choice == 0) {
      pRandomX=pRandomX+5;
      pRandomX++;
    }else if (choice == 1) {
      pRandomX=pRandomX-5;
      pRandomX--;
    }else if (choice == 2) {
      pRandomY=pRandomY+5;
      pRandomY++;
    }else {
      pRandomY=pRandomY-5;
      pRandomY--;
    }
    //point
    pRandomX = constrain(pRandomX,0,width-1);
    pRandomY = constrain(pRandomY,0,height-1);
    }
  
 
}