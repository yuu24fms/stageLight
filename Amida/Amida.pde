//日　本　語　の　表　示　が　で　き　る　フ　ォ　ン　ト　に　設　定　す　る　。

ArrayList <String> top=new ArrayList<String>();
ArrayList <String> bottom=new ArrayList<String>();
ArrayList <Integer> boX=new ArrayList<Integer>();
ArrayList <Integer> boY=new ArrayList<Integer>();
ArrayList <Boolean> flagX=new ArrayList<Boolean>();
ArrayList <Boolean> flagY=new ArrayList<Boolean>();
int ninzu=5; //人　数
int honsu=7;

void setup() {
  size(ninzu*80, 600);
  for (int f=80;f<height-80;f++) {
    flagX.add(false);
    flagY.add(false);
  }
  for (int l=0;l<=honsu;l++) {
    boX.add(int(random(1, ninzu)));
    boY.add(int(random(80, height-80)));
  }
  //top.add("こ　こ　に　み　ん　な　の　名　前　");
  top.add("かな");
  top.add("はるか");
  top.add("ゆう");
  top.add("えみ");
  top.add("しおり");
  //bottom.add("こ　こ　に　結　果");
  bottom.add("舞美");
  bottom.add("早貴");
  bottom.add("愛理");
  bottom.add("千聖");
  bottom.add("舞");
}

void draw() {
  background(255, 200, 180);
  for (int ninzuTate=0;ninzuTate<ninzu;ninzuTate++) {
    stroke(100);
    strokeWeight(3);
    line(ninzuTate*(width/ninzu)+width/ninzu/2, 50, ninzuTate*(width/ninzu)+width/ninzu/2, height-50);
  }
  textAlign(CENTER, CENTER);
  for (int u=0;u<ninzu;u++) {
    textSize(30);
    //　文　字　の　大　き　さ　の　設　定
    fill(100);
    text(top.get(u), u*(width/ninzu)+width/ninzu/2, 20);
    text(bottom.get(u), u*(width/ninzu)+width/ninzu/2, height-20);
  }
  for (int k=0;k<honsu;k++) {
    line((boX.get(k)-1)*(width/ninzu)+width/ninzu/2, boY.get(k), boX.get(k)*(width/ninzu)+width/ninzu/2, boY.get(k));
  }
}

