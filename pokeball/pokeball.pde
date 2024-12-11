//Variables Globales
String pokemonFavorito = "Umbreon";
String entrenador = "AriPont";
int nivel = 20;
color negro = color(0, 0, 0);
color blanco = color(255, 255, 255);
color rojo = color(255, 0, 0);
color verde = color(0, 255, 0);
color azul = color(0, 0, 255);
color amarillo = color(255, 255, 0);
color gris = color(100, 100, 100);

void setup(){
    size(600, 600, P2D);
    frameRate(30);
    smooth(2);
    background(200);
}

void draw(){
    println("Posición X: " + mouseX + ", Posición Y: " + mouseY);
    //strokeWeight(10);
    
    fill(azul);
    textSize(28);
    text("Esto es una pokeball", 20, 55);
    
    line(20, 65, 260, 65);
    
    //fill(amarillo);
    //triangle(x1, y1, x2, y2, x3, y3);
    
    fill(blanco);
    textSize(22);
    text("Contiene un: " + pokemonFavorito, 20, 90);
    
    //fill(verde);
    //square(x, y, tamaño cuadrado);
    
    fill(blanco);
    text("De: " + entrenador, 20, 120);
    
    //quad(x1, y1, x2, y2, x3, y3, x4, y4);
    //quad(20, 143, 27, 136, 34, 143, 27, 150);
    
    fill(blanco);
    text("Nivel: " + nivel, 20, 150);
    
    fill(rojo);
    circle(300, 300, 300);
    
    fill(blanco);
    arc(300, 300, 300, 300, 0, PI, OPEN);
    
    fill(gris);
    //rect(x1, x2, y, alto, radio bordes);
    rect(150, 290, 300, 25, 4);
    
    noStroke();
    circle(300, 300, 100);
    
    stroke(0);
    fill(blanco);
    circle(300, 300, 75);
    circle(300, 300, 50);
    
    /*stroke(azul);
    strokeCap(ROUND);
    strokeWeight(10);
    point(mouseX, mouseY);*/
    
}
