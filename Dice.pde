void setup()
{
  noLoop();
  size(300,300);
  fill(180, 180, 180);
  textAlign(CENTER);
  textSize(28);
}
void draw()
{
   int sum = 0;
   background(0);
   for (int y = 48; y < 250; y +=50){
     for (int x = 5; x < 300; x+=50){
    Die weiu = new Die(x,y);
    weiu.show();
    sum += weiu.dice_num;
     }
   }
   text("Total: " + sum, 120, 30);
}

void mousePressed()
{
  redraw();
}
class Die //one single dice cube
{
    int dice_num, myX, myY;
    Die(int x, int y) //constructor
    {
      myX = x;
      myY = y;
    }
    
    void show()
    {
      noStroke();
      fill(255);
      rect(myX, myY, 40, 40);
       dice_num = (int)(Math.random()*6)+1;
      fill(80, 100, 200);
      if (dice_num == 1){
        ellipse(myX+20, myY+20, 8, 8);
      }
      else if (dice_num == 2) {
       ellipse(myX+13, myY+13, 8, 8);  
       ellipse(myX+26, myY+26, 8, 8);  
      }
      else if (dice_num == 3) {
       ellipse(myX+10, myY+10, 8, 8);
       ellipse(myX+20, myY+20, 8, 8);
       ellipse(myX+30, myY+30, 8, 8);
      }
      else if (dice_num == 4) {
       ellipse(myX+13, myY+13, 8, 8);
       ellipse(myX+26, myY+13, 8, 8);
       ellipse(myX+13, myY+26, 8, 8);
       ellipse(myX+26, myY+26, 8, 8);
      }
      else if (dice_num == 5) {
        ellipse(myX+20, myY+20, 8, 8);
        ellipse(myX+10, myY+10, 8, 8);
        ellipse(myX+30, myY+10, 8, 8);
        ellipse(myX+10, myY+30, 8, 8);
        ellipse(myX+30, myY+30, 8, 8);
      }
      else if (dice_num == 6) {
        ellipse(myX+12, myY+10, 8, 8);
        ellipse(myX+12, myY+20, 8, 8);
        ellipse(myX+12, myY+30, 8, 8);
        ellipse(myX+27, myY+10, 8, 8);
        ellipse(myX+27, myY+20, 8, 8);
        ellipse(myX+27, myY+30, 8, 8);
      }
    }
}
