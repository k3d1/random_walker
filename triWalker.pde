class triWalker { 
  int triX1,triX2,triX3,triY1,triY2,triY3;
  int r,g,b;
  
  triWalker(int r,int g,int b) {
   this.r = r;
   this.g = g;
   this.b = b;
   //triangle
   triX1=100; triY1=100;
   triX2=triX1-5; triY2=triY1+15; triX3=triX1+5; triY3=triY1+15;
  }
  
  void render() {
    //triangle
    noFill();
    stroke(r,g,b,120);
    triangle(triX1,triY1,triX2,triY2,triX3,triY3);
  }
  
  //randomly move up, down, left, right...
  void step() {
    //triangle walker
    int choice4= int(random(4));
    if(choice4==0) {triX1=triX1+20; triX2=triX2+20; triX3=triX3+20;}
    else if(choice4==1) {triX1=triX1-20; triX2=triX2-20; triX3=triX3-20;}
    else if(choice4==2) {triY1=triY1+35; triY2=triY2+35; triY3=triY3+35;}
    else {triY1=triY1-35; triY2=triY2-35; triY3=triY3-35;}
    
    //triangle
    triX1=constrain(triX1,0,width-1);
    triX2=constrain(triX2,0,width-1);
    triX3=constrain(triX3,0,width-1);
    triY1=constrain(triY1,0,height-1);
    triY2=constrain(triY2,0,height-1);
    triY3=constrain(triY3,0,height-1);
  }
}