setup = function() {
size(400, 400);
};

var draw8 = function (EightX, EightY){ // 8 Symbol function
fill (255, 255, 255);
textSize (60);
text("8", EightX, EightY);
};

var answer = 0;

draw = function(){
  background(100,100,100);

  fill(0, 0, 0);
  ellipse(200, 200, 375, 375); // 8 Ball Sphere
  fill(60, 0, 255);
  
  if (mousePressed && mouseY < 390) {
    fill(255, 0, 0);
    }
    
  triangle(200, 104, 280, 280, 120, 280); // Blue Triangle
  fill(255, 255, 255);
     
 if (answer == 0) {  // Opening Text Only
    text("Click here", 174, 200);
    text("to reveal your fate", 153, 229); }
 
    if (answer === 1) {
      fill (255, 255, 255);
      textSize(30);
      text("YES", 174, 230);
    }

    if (answer == 2) {
      fill (255, 255, 255);
      textSize(30);
      text("NO", 180, 230);
    }
    
    if (answer == 3) {
      fill (255, 255, 255);
      textSize(30);
      text("Maybe", 157, 230);
    }

    if (answer == 4) {
      fill (255, 255, 255);
      textSize(14);
      text("I am not certain", 153, 230);
    }

    if (answer == 5) {
      fill (255, 255, 255);
      textSize(14);
      text("Ask again later", 154, 230);
    }

draw8(183, 73); // 8 Symbol

};

mouseClicked = function(){
  answer = round(random(1, 5));
};