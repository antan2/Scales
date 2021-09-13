float r = (float)(125 + 120*Math.random());
float g = (float)(125 + 120*Math.random());
float b = (float)(125 + 120*Math.random());
float random;

void setup() {
 size(500, 500);  //feel free to change the size
 noLoop(); //stops the draw() function from repeating
}
void draw() {
  if(r + g + b <= 500){
     r = (float)(125 + 120*Math.random());
     g = (float)(125 + 120*Math.random());
     b = (float)(125 + 120*Math.random());
  }
  background(r, g, b);
  for(int y = 525; y >= -25; y -= 25){
  for(int x = -25; x <= 525; x += 50){
    if((y/25)%2 == 0){
      scale(x, y, (float)(23 + 10*(Math.random()-0.25)));
    }
    else {
      scale(x +25, y, (float)(23 + 10*(Math.random()-0.25)));
    }
  }
 }

}


void scale(float x, float y, float s) {
 random = (float)(50*Math.random());
 strokeWeight(1);
 stroke(0, 0, 0);
 fill(r-random, g-random, b-random);
 arc(x, y, 2*s, 2*s, PI, TWO_PI);
 triangle(x-s, y, x+s, y, x, y+s);
 triangle(x-s/2, y, x+s/2, y, x, y+s*2);
 noStroke();
 arc(x, y, 2*s-1, 2*s-1, PI, TWO_PI);
 for(int n = 1; n < s; n ++){
  fill(r-random - n*((r-random)/s), g-random - n*((g-random)/s), b-random - n*((b-random)/s));
  arc(x, y, 2*(s-n)-1, 2*(s-n)-1, PI, TWO_PI);
  triangle(x-s+n, y, x+s-n, y, x, y+(s-n));
  triangle(x-(s-n)/2, y, x+(s-n)/2, y, x, y+(s-n)*2);
 }
}





