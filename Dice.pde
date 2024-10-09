//Die bob; 
int sum = 0;
void setup()
  {
      size(560, 560);
      noLoop();
  }
  void draw()
  {
    strokeWeight(5);
      for(int x = 0; x < 500; x+=70){
        for(int y = 0; y < 500; y+= 70){
      Die bob = new Die (x, y);
      bob.show();
      bob.roll();
      
        }
      }
   
   textSize(25);
   text("Total:" +sum, 220, 535);
   sum = 0;
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int size, numRolled, myX, myY;
     
      Die(int x, int y) //constructor
      {
          //variable initializations here
          myX = x;
          myY = y;
          numRolled = (int) ((Math.random() *6) +1);
      }
      void roll()
      {
          //your code here
          fill((int)(Math.random()*150)+50);
          size = 15;
          if(numRolled == 1){
            ellipse(myX + 35, myY + 35, size, size);
            sum = sum + 1;
          }
            if(numRolled == 2){
            ellipse(myX + 15, myY + 15, size, size);
            ellipse(myX + 55, myY + 55, size, size);
            sum = sum + 2;
          }
          if(numRolled == 3){
            ellipse(myX + 15, myY + 15, size, size);
            ellipse(myX + 55, myY + 55, size, size);
            ellipse(myX + 35, myY + 35, size, size);
            sum = sum + 3;
          }
          if(numRolled == 4){
            ellipse(myX + 15, myY + 15, size, size);
            ellipse(myX + 15, myY + 55, size, size);
            ellipse(myX + 55, myY + 15, size, size);
            ellipse(myX + 55, myY + 55, size, size);
            sum = sum + 4;
          }
          if(numRolled == 5){
            ellipse(myX + 15, myY + 15, size, size);
            ellipse(myX + 15, myY + 55, size, size);
            ellipse(myX + 55, myY + 15, size, size);
            ellipse(myX + 55, myY + 55, size, size);
            ellipse(myX + 35, myY + 35, size, size);
            sum = sum + 5;
          }
          if(numRolled == 6){
            ellipse(myX + 15, myY + 15, size, size);
            ellipse(myX + 15, myY + 55, size, size);
            ellipse(myX + 55, myY + 15, size, size);
            ellipse(myX + 55, myY + 55, size, size);
            ellipse(myX + 15, myY + 35, size, size);
            ellipse(myX + 55, myY + 35, size, size);
            sum = sum + 6;
          }
          fill(0);
      }
      void show()
      {
          //your code here
          fill((int)(Math.random()*150)+50, (int)(Math.random()*150)+50, (int)(Math.random()*150)+50);
          rect(myX,myY,70,70);
          fill(255);
          rect(210,490,140,70);
         
      }
  }
