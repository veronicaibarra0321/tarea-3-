//Movimiento pelota

//Estas son las posiciones iniciales de las bolas
float coorXBola1;
float coorXBola2;
float coorXBola3;
float coorXBola4;
float coorXBola5;

//Coordenadas en Y 
float coorY1;
float coorY2;
float coorY3;

//La velocidad a la que se mueven es diferente
float ySpeed = 2;
float ySpeed2 = 3;
float ySpeed3 = 4;

//la direccion 
int yDirection1 = 1;
int yDirection2 = 1;
int yDirection3 = 1;

void setup(){
  size(800,800);
  frameRate(200);
  
  //Inicializamos las bolas en columnas separdas
  coorXBola1 = 100;
  coorXBola2 = 250;
  coorXBola3 = width/2;
  coorXBola4 = 550;
  coorXBola5 = 700;
  
  
  coorY1 = height/2;
  coorY2 = height/2;
  coorY3 = height/2;
}

void draw(){
  background(#2C4850);
  
  stroke(0);
  strokeWeight(2);
  
  //Cambia de dirección cuando la bola toca el techo o el piso
  //Cambia el color usando la funcion map, entonces el color va cambiando con la posicion en Y de cada bola
  
  //Bola1 y 5
  if(coorY1 > height || coorY1 < 0){
    yDirection1 = yDirection1 * -1;
  }
  //Mueve la bola
  coorY1 = coorY1 + (ySpeed * yDirection1);
  //Pinta las bolas 1 y 5
  float col1 = map(coorY1, 0,height,0,255);
  fill(col1,100,100);
  circle(coorXBola1,coorY1,100);
  circle(coorXBola5,coorY1,100);
  
  
  //Bola 2 y 4
  if(coorY2 > height || coorY2 < 0){
    yDirection2 = yDirection2 * -1;
  }
  //Mueve la bola
  coorY2 = coorY2 + (ySpeed2 * yDirection2);
  //Pinta ls bolas 2 y 4
  float col2 = map(coorY2, 0,height,0,255);
  fill(col2,100,100);
  circle(coorXBola2,coorY2,80);
  circle(coorXBola4,coorY2,80);
  
  //Bola 3: de la mitad
  if(coorY3 > height || coorY3 < 0){
    yDirection3 = yDirection3 * -1;
  }
  //Mueve la bola de la mitad
  coorY3 = coorY3 + (ySpeed3 * yDirection3);
  //Pinta la bola de la mitad
  float col3 = map(coorY3, 0,height,0,255);
  fill(col3,100,100);
  circle(coorXBola3,coorY3,70);
}
