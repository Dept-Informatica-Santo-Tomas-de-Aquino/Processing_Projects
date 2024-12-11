// Este programa genera nuevos cuadrados en pantalla a medida que se hace clic en el último cuadrado generado

int positionSquareX1;
int positionSquareY1;
int positionSquareX2;
int positionSquareY2;
int count;
boolean status = true;

void setup(){
  fullScreen();
  println("Tamaño del liezo: " + pixelWidth + "w, " + pixelHeight + "h");
}

void draw(){
  if(status == true){
    createRandomSquare(25);
    status = false;
    println("¡Debes hacer clic en el nuevo cuadrado!");
  }else{}
}

void createRandomSquare(int squareSize){  
  int x = int(random(pixelWidth - squareSize));
  int y = int(random(pixelHeight - squareSize));
  
  positionSquareX1 = x;
  positionSquareY1 = y;
  positionSquareX2 = positionSquareX1 + squareSize;
  positionSquareY2 = positionSquareY1 + squareSize;
  
  square(x, y, squareSize);
  println("Square x1 = " + positionSquareX1 + ", x2 = " + positionSquareX2 + ", y1 = " + positionSquareY1 + ", y2 = " + positionSquareY2);
}

void mousePressed(){
  int positionX = int(mouseX);
  int positionY = int(mouseY);
  
  println("checkClick(" + positionX + ", " + positionY+ ");");
  checkClick(positionX, positionY);
}

void checkClick(int positionX, int positionY){
  if(positionX >= positionSquareX1 && positionX <= positionSquareX2 && positionY >= positionSquareY1 && positionY <= positionSquareY2){
    count++;
    status = true;
    println("¡Acertaste! +1");
    println("Puntaje: " + count);
  }else{
    println("¡Ups! Erraste.");
  }
}
