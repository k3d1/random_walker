class plusWalker {
  int x1,y1,x2,y2,x3,y3,x4,y4;
  int r,g,b;
  
  plusWalker(int r,int g,int b) {
   this.r = r;
   this.g = g;
   this.b = b;
   x1=700; x2=x1+4; x3=x1+2; x4=x1+2;
   y1=240; y2=y1+4; y3=y1-2; y4=y1+2;
   
  }
  
  void render() {
    stroke(r,g,b,100);
    noFill();
    beginShape(LINES);
    vertex(x1,y1);
    vertex(x2,y2);
    vertex(x3,y3);
    vertex(x4,y4);
    endShape();
  }
  
  void step() {    
    int choice = int(random(4));
    if(choice == 0) {x1=x1+10;x2=x2+10;x3=x3+10;x4=x4+10;}
    else if(choice == 1) {x1=x1-10;x2=x2-10;x3=x3-10;x4=x4-10;}
    else if(choice == 2) {y1=y1+10;y2=y2+10;y3=y3+10;y4=y4+10;}
    else {y1=y1-10;y2=y2-10;y3=y3-10;y4=y4-10;}
    
    
    x1=constrain(x1,0,width-1);
    y1=constrain(y1,0,height-1);
    
  }
}
  
  