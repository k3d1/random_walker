class rectWalker { 
  int rectX,rectY,rectW,rectH;
  int r,g,b;
  
  rectWalker(int r,int g,int b) {
   this.r = r;
   this.g = g;
   this.b = b;
   //square position & width&height
   rectX=width/2; rectY=height/2; 
   rectW=5; rectH=5;
  }
  
  void render() {
    stroke(r,g,b,100);
    noFill();
    rect(rectX,rectY,rectW,rectH);
  }
  
  //randomly move up, down, left, right...
  void step() {    
    //square walker
    int choice2 = int(random(4));
    if(choice2 == 0) {rectX=rectX+10;}
    else if(choice2 == 1) {rectX=rectX-10;}
    else if(choice2 == 2) {rectY=rectY+10;}
    else {rectY=rectY-10;}
    
    //square
    rectX=constrain(rectX,0,width-1);
    rectY=constrain(rectY,0,height-1);
    
  }
}