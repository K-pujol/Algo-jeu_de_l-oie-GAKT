int D1 = 0;
int D2 = 0;
int position = 0;
int[] plateau = new int [64];



void draw() {



  for (int i = 0; i < 64; i++) {

    fill (143,139,163);
    
    if (position == i) {
      fill (255,0,0);
    }
    rect (i*10, 0, 10, 50);
  }
}

void setup() {
  size (1000, 500);

  while (position != 63) {

    D1 = LancerDes();
    D2 = LancerDes();
    println("position: " + position + " " + D1 + "+" +  D2);

    position = position + D1 + D2;


    if (position > 63) {
      int ecart = position - 63;
      position = position - ecart * 2;
    }
  }

  println("Position: " + position + " C'est gagné !");
}




int LancerDes() {

  return int(random(6)+1);
}
