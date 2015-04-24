ArrayList<Integer>array=new ArrayList<Integer>();

void setup() {
  size(400, 400);
  background(0);
  fill(255);
  ellipse(200, 200, 180, 180);
  for (int c=1;c<=75;c++) {
    array.add(c);
  }
}

int i=0;
int mouseCount=0;
int num;

void draw() {
  if (mouseCount%2==0) {
    fill(255);
    ellipse(200, 200, 180, 180);
    fill(0);
    textSize(80);
    num=array.get(int(random(0, array.size()-1)));
    if (num>9) {
      text(num, 150, 225);
    }
    else {
      text(num, 175, 225);
    }
  }
}

void mousePressed() {
  fill(255);
  ellipse(200, 200, 180, 180);
  fill(0);
  textSize(80);
  if(mouseCount%2==0){
  num=array.remove(int(random(0, array.size()-1)));
  if (num>9) {
    text(num, 150, 225);
  }
  else {
    text(num, 175, 225);
  }
  }
  if (mouseCount%2==0) {
    println(array);
  }
  mouseCount++;
}

