class lnWalker { 
  int lnX1,lnX2,lnY1,lnY2;
  int r,g,b;
    
  lnWalker(int r, int g, int b) {
    this.r = r;
    this.g = g;
    this.b = b;
    //line x & y position
    lnX1= int(random(100,900)); lnX2= lnX1+10; 
    lnY1=int(random(100,500)); lnY2=lnY1;
  }
  
  // commit test
  void render() {
    stroke(r,g,b);
    line(lnX1,lnY1,lnX2,lnY2);
  }
  
  //randomly move up, down, left, right...
  void step() {
    int choice3 = int(random(4));
    if(choice3==0) {lnX1=lnX1+10; lnX2=lnX2+10;}
    else if(choice3==1) {lnX1=lnX1-10; lnX2=lnX2-10;}
    else if(choice3==2) {lnY1=lnY1+10; lnY2=lnY2+10;}
    else {lnY1=lnY1-10; lnY2=lnY2-10;}
    
    lnX1=constrain(lnX1,0,width-1);
    lnX2=constrain(lnX2,0,width-1);
    lnY1=constrain(lnY1,0,height-1);
    lnY2=constrain(lnY2,0,height-1);
    
  }
}