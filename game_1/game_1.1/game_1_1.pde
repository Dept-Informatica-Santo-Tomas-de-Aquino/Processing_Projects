// Este programa genera cuadrados dentro de la pantalla cada 1 segundo

void setup(){
  fullScreen();
  println("Tamaño del liezo: " + pixelWidth + "w, " + pixelHeight + "h");
}

void draw(){
  createRandomSquare(50);
  delay(1000);
}

void createRandomSquare(int squareSize){  
  int x = int(random(pixelWidth - squareSize));
  int y = int(random(pixelHeight - squareSize));
  
  square(x, y, squareSize);
}
