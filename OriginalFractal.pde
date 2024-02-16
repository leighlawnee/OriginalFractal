public void setup(){
smooth();
noStroke();
size(300, 300);
}

public void draw(){
myFractal(500, 500, 60);

}


public void myFractal(int width, int height, int siz){

if(siz>0)
myFractal(width, height, siz-10);

float y = siz*1.5;

if(y>105)
y = 105;

fill(215, 0+(int)(Math.random()*siz*2), 0+(int)(Math.random()*siz*5));
beginShape();
curveVertex(150, 600-siz*5);
curveVertex(150, 270-siz);
curveVertex(30+siz*1.5, 150);
curveVertex(75+siz, 75+siz);
curveVertex(150, 100+y);
curveVertex(150-siz, 300-siz);
endShape();

beginShape();
curveVertex(150, 300);
curveVertex(150, 100+y); //good
curveVertex(225-siz, 75+siz); //good
curveVertex(270-siz*1.5, 150);
curveVertex(150, 270-siz); //good
curveVertex(150, 600-siz*5);
endShape();

}
