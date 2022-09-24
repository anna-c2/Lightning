int startX = 0;
int startY = (int)(Math.random()*250)+150;
int endX = 0;
int endY = (int)(Math.random()*250)+150;

int startX2 = 0;
int startY2 = (int)(Math.random()*250)+150;
int endX2 = 0;
int endY2 = (int)(Math.random()*250)+150;

int startX3 = 700;
int startY3 = (int)(Math.random()*250)+150;
int endX3 = 700;
int endY3 = (int)(Math.random()*250)+150;
void setup()
{
  size(700,700);
  strokeWeight(10);
 
}
void draw()
{
 //moon
  fill(255);
  ellipse(100,100,100,100);

//first lightning left to right
  endX = startX + (int)(Math.random()*50);
  endY = startY + (int)(Math.random()*29)-9;
  //fading
  fill(0,0,0,5);
  noStroke();
  rect(0,0,800,800);
 
 
  int r = 252 + (int)(Math.random()*60);
  int g = 247 + (int)(Math.random()*60);
  int b = 222 + (int)(Math.random()*60);
  stroke(r,g,b,50);
  line(startX,startY,endX,endY);
   startX = endX;
   startY = endY;
 
  strokeWeight(0.8);
  stroke(#FAC5EE);
  fill(255);
//second lightning (going from left to right)
  endX2 = startX2 + (int)(Math.random()*50);
  endY2 = startY2 + (int)(Math.random()*29)-9;
  fill(0,0,0,5);
  noStroke();
  rect(0,0,800,800);
  strokeWeight(4);
  stroke(#EF9EF5,50);
  line(startX2,startY2,endX2,endY2);
   startX2 = endX2;
   startY2 = endY2;
//lightning going from right to left
  endX3 = startX3 + (int)(Math.random()*-50);
  endY3 = startY3 + (int)(Math.random()*29)-9;
  fill(0,0,0,5);
  noStroke();
  rect(0,0,800,800);
  strokeWeight(2);
  stroke(#FAC5EE,70);
  fill(255);
  line(startX3,startY3,endX3,endY3);
   startX3 = endX3;
   startY3 = endY3;
   
}



void mousePressed()
{
  startX = 0;
  startY = (int)(Math.random()*250)+150;
  endX = 0;
  endY = (int)(Math.random()*250)+150;
 
  startX2 = 0;
  startY2 = (int)(Math.random()*250)+150;
  endX2 = 0;
  endY2 = (int)(Math.random()*250)+150;
 
  startX3 = 700;
  startY3 = (int)(Math.random()*250)+150;
  endX3 = 700;
  endY3 = (int)(Math.random()*250)+150;
   
   //background speckles
   for(int q = 0; q < 25; q++){
    fill(255,100);
    ellipse( (int)(Math.random()*700),(int)(Math.random()*700), 5,5);
  }
}
