// Este programa genera nuevos cuadrados en pantalla a medida que se hace clic en el último cuadrado generado. A su vez, contabiliza los aciertos y las fallas. Cuando los aciertos llegan a 10, termina el juego.

int positionSquareX1;
int positionSquareY1;
int positionSquareX2;
int positionSquareY2;
int count;
int miss;
boolean status = true;

void setup(){
  fullScreen();
  println("Tamaño del liezo: " + pixelWidth + "w, " + pixelHeight + "h");
}

void draw(){
  if(status == true && count < 10){
    createRandomSquare(25);
    status = false;
    println("¡Debes hacer clic en el nuevo cuadrado!");
  }else{
    if(count >= 10){
      float timeEnd = millis()/1000.0;
      background(100, 150, 70);
      textSize(42);
      textAlign(CENTER, CENTER);
      text("¡Terminaste! Total de fallos: " + miss + ".", (pixelWidth / 2), (pixelHeight / 2));
      text("Total de tiempo: " +  timeEnd + ".", (pixelWidth / 2), (pixelHeight / 2) + 50);
      noLoop();
    }
  }
  /*
  extSize(16);
  textAlign(RIGHT, CENTER);
  fill(100);
  text("¡Terminaste! Total de fallos: " + miss + ".", (pixelWidth - 50), (pixelHeight - 50));
  text("Total de tiempo: " +  millis()/1000.0 + ".", (pixelWidth - 50), (pixelHeight - 20));
  */
}

void createRandomSquare(int squareSize){  
  int x = int(random(pixelWidth - squareSize));
  int y = int(random(pixelHeight - squareSize));
  
  positionSquareX1 = x;
  positionSquareY1 = y;
  positionSquareX2 = positionSquareX1 + squareSize;
  positionSquareY2 = positionSquareY1 + squareSize;
  
  fill(255);
  square(x, y, squareSize);
  println("Square x1 = " + positionSquareX1 + ", x2 = " + positionSquareX2 + ", y1 = " + positionSquareY1 + ", y2 = " + positionSquareY2);
}

void mousePressed(){
  if(count < 10){
    int positionX = int(mouseX);
    int positionY = int(mouseY);
    
    println("checkClick(" + positionX + ", " + positionY+ ");");
    checkClick(positionX, positionY);
  }else{}
}

void checkClick(int positionX, int positionY){
  if(positionX >= positionSquareX1 && positionX <= positionSquareX2 && positionY >= positionSquareY1 && positionY <= positionSquareY2){
    count++;
    status = true;
    println("¡Acertaste! +1");
    println("Puntaje: " + count);
  }else{
    miss++;
    println("¡Ups! Erraste.");
  }
}
