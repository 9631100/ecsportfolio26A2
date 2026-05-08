// Gaby Orozco | 4 Mar 2026 | ShapeGame
int x, y, tx, ty, score;
float tw;
PImage target, player;

void setup() {
  size(800,800);
  x = width/2;
  y = height/2;
  tx = int(random(20,width-20));
  ty = int(random(20,height-20));
  tw = 200.0;
  score = 0;
  target = loadImage("target.png");
  player = loadImage("Player.png");
}

void draw() {
  background(127);
  target();
  //ellipse(x,y,20,20);
  imageMode(CENTER);
  //image(target,x,y);
  image(player,x,y);
  
 }

void target () {
  float d = dist(x,y,tx,ty);
  println(d);
  println(score);
  if(d<50) {
    score = score + int(tw*20);
     tx = int(random(20,width-20));
     ty = int(random(20,height-20));
     tw = 200;
  }
  if(tw<10){
    gameOver();
  }
  image(target,tx,ty);
  tw = tw - 0.1;
  target.resize(int(tw),int(tw));
  fill(127,127);
  fill(0);
  textSize(30);
  text("score:" + score,20,25);
  tw = tw -1;
}

void gameOver(){
  background(0);
  fill(255,0,0);
  textSize(40);
  text("Game Over!",width/2, height/2);
  noLoop();
}

void keyPressed() {
  // Edge Looping
  if(x > width) {
    x = 0;
  }
  
  if(x < 0) {
    x = width;
  }
  
  // WASD and Arrow Movement
  if(key == 'w' || key == 'W' || keyCode == UP) {
    y = y - 10;
  } else if(key == 's' || key == 'S' || keyCode == DOWN) {
    y = y + 10;
  } else if(key == 'a'|| key == 'A' || keyCode == LEFT) {
    x = x - 10;
  } else if(key == 'd'|| key == 'd' || keyCode == RIGHT) {
    x = x + 10;
  }
}
