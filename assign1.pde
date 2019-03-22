PImage bgImg, groundhogImg, lifeImg, robotImg, soilImg, soldierImg;
int xSoldier, ySoldier, xRobot, yRobot, rowSoldier, rowRobot, xBullet, yBullet;

void setup(){
  size(640,480);
  
  //add images 
  bgImg = loadImage("img/bg.jpg");
  groundhogImg = loadImage("img/groundhog.png");
  lifeImg = loadImage("img/life.png");
  robotImg = loadImage("img/robot.png");
  soilImg = loadImage("img/soil.png");
  soldierImg = loadImage("img/soldier.png");
  
  //add initial values to variables
  rowSoldier = floor(random(2,6));
  rowRobot = floor(random(2,6));
  xSoldier = 0;
  ySoldier = 80* rowSoldier;
  xRobot = 160 + floor(random(0,381)); 
  // 640-(160+10)=380; robot's width is about 10 pixels
  yRobot = 80* rowRobot;
  xBullet = xRobot + 25;
  yBullet = yRobot + 37;
}

void draw(){
  
  
  //background image
  image(bgImg, 0, 0);
  
  //grass
  fill(124, 204, 25);
  noStroke();
  rect(0, 145, 640, 15);
  
  //sun
  fill(255, 255, 0);
  noStroke();
  ellipse(590, 50, 130, 130);
  
  //inner sun
  fill(253, 184, 19);
  noStroke();
  ellipse(590, 50, 120, 120);
  
  
  //groundhog, life, soil images
  image(groundhogImg, 270, 80);
  image(lifeImg, 10, 10);
  image(lifeImg, 80, 10);
  image(lifeImg, 150, 10);
  image(soilImg, 0, 160);
  
  
  //robot animation
  stroke(255, 0, 0);
  strokeWeight(10);
  line(xBullet, yBullet, xBullet+40, yBullet);
  image(robotImg, xRobot, yRobot);
  if(xBullet >= xRobot-160){
    xBullet -= 2;
  }
  else{
    xBullet = xRobot+25;
  }
  
  
  //soldier animation  
  xSoldier += 3;
  if(xSoldier >= 640){
    xSoldier = -80;
  }
  image(soldierImg, xSoldier, ySoldier);
  
}
