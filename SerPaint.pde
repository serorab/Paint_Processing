import ddf.minim.*; //Librería que permite subir audio.
Minim minim;
AudioSample sonido1, sonido2, sonido3, sonido4, sonido5, sonido6, sonido7;//Variables para los archivos de sonido.

int [] colores = {0,0,0}; //Variable que guarda el color del pincel
int a = 0;//Variable que suma en el guardado de las imágenes.
int radio = 1;//Variable para determinar el grosor del pincel.
PImage fondo;//Variable para la imagen de fondo.
PFont fuente;//Variable para la fuente.
float ran = random (1, 10000); //Variable para darle número aleatorio al guardado de imágenes.
int num;//Variable para elección de forma del pincel.


void setup(){ 
    
  size(1024,780);
  fuente = loadFont("ComicSansMS-Bold-18.vlw");//Carga la fuente
  textFont(fuente);
  surface.setTitle("SerPaint 1.1.3 | Sergio Ordóñez | Lenguajes de Programación | Año 1");
  surface.setResizable(false);//Es 'false' porque no supe cómo aplicar esta función de manera correcta a mi programa.
  minim = new Minim(this);
  sonido1 = minim.loadSample("click.wav");
  sonido2 = minim.loadSample("reciclaje.wav");
  sonido3 = minim.loadSample("guardar.wav");
  sonido4 = minim.loadSample("grueso.wav");
  sonido5 = minim.loadSample("delgado.wav");
  sonido6 = minim.loadSample("cancion.mp3");
  sonido7 = minim.loadSample("logout.mp3");
  
  background(255);
  fondo = loadImage("Fondo-Paint.png");
  image(fondo, 0, 0);
  
  //Indicador de color elegido por el usuario.
  fill(0,0,0);
  ellipse(418, 725, 20, 20); 
  
  stroke(0,0,0); // define color de linea inicial.
  strokeWeight(radio); //define ancho de linea 
  
};

void draw(){
  
  //función detecta el click del mouse y analiza la posición.
  if ((mousePressed) && (mouseY < 690)){  
    //Elige la forma del pincel.
    switch(num){
    case 1:
    line(mouseX,mouseY,pmouseX,pmouseY); break;
    case 2:
    triangle(mouseX, mouseY, mouseX-5, mouseY+5, mouseX+5, mouseY+5);break;
    case 3:
    rect(mouseX, mouseY, 5,5);break;
    case 4:
    ellipse(mouseX, mouseY, 5,5);    
    }
  };
};

void mouseClicked(){
  
  strokeWeight(radio); 
  smooth(); //suaviza los bordes
  sonido1.trigger();
  
  //Escoge el color del pincel.
  rojo();
  naranja();
  amarillo();
  verde();
  azul();
  negro();
  borrador();    
  //Botones
  Logout();
  Grosor();
  Guardar();   
  Reiniciar();
  Cancion();
  //Escoge el tipo de pincel.
  linea();
  triangulo();
  cuadrado();
  circulo();
  
}

//PINCELES

//Pincel línea
void linea(){
  
  if (mouseX > 602 && mouseX < 645 
  && mouseY > 725 && mouseY < 770){
    
    num = 1;
  }
}

//Pincel triángulo
void triangulo(){
  
  if (mouseX > 660 && mouseX < 700 
  && mouseY > 725 && mouseY < 770){
    
    num = 2;
  }  
}

//Pincel cuadrado
void cuadrado(){
  
  if (mouseX > 713 && mouseX < 755 
  && mouseY > 725 && mouseY < 770){
    
    num = 3;
  }
}

//Pincel círculo
void circulo(){
  
  if (mouseX > 763 && mouseX < 805 
  && mouseY > 725 && mouseY < 770){
  
    num = 4;
  }
}

//COLOR PINCELES

//Pincel rojo
void rojo(){  
  
  if ((mouseX < 52) && (mouseX > 0) 
   && (mouseY < 780)  && (mouseY > 703)) { 
   
   colores[0] = 220;
   colores[1] = 56;
   colores[2] = 71;
   stroke(colores[0],colores[1],colores[2]);
   fill(colores[0],colores[1],colores[2]);
   ellipse(418, 725, 20, 20);};
}

//Pincel naranja
void naranja(){  
  
  if ((mouseX < 101) && (mouseX > 52) 
   && (mouseY < 780)  && (mouseY > 703)) {

   colores[0] = 235;
   colores[1] = 96;
   colores[2] = 17;
   stroke(colores[0],colores[1],colores[2]);
   fill(colores[0],colores[1],colores[2]);
   ellipse(418, 725, 20, 20);};
}

//Pincel amarillo
void amarillo(){  
  
  if ((mouseX < 152) && (mouseX > 101) 
   && (mouseY < 780)  && (mouseY > 703)) {

   colores[0] = 250;
   colores[1] = 245;
   colores[2] = 101;
   stroke(colores[0],colores[1],colores[2]);
   fill(colores[0],colores[1],colores[2]);
   ellipse(418, 725, 20, 20);};
}

//Pincel verde
void verde(){  
  
  if ((mouseX < 202) && (mouseX > 152) 
   && (mouseY < 780)  && (mouseY > 703)) {

   colores[0] = 17;
   colores[1] = 104;
   colores[2] = 9;
   stroke(colores[0],colores[1],colores[2]);
   fill(colores[0],colores[1],colores[2]);
   ellipse(418, 725, 20, 20);};
}

//Pincel azul
void azul(){  
  
  if ((mouseX < 251) && (mouseX > 202) 
   && (mouseY < 780)  && (mouseY > 703)) {

   colores[0] = 71;
   colores[1] = 103;
   colores[2] = 164;
   stroke(colores[0],colores[1],colores[2]);
   fill(colores[0],colores[1],colores[2]);
   ellipse(418, 725, 20, 20);};
}

//Pincel negro
void negro(){  
  
  if ((mouseX < 300) && (mouseX > 251) 
   && (mouseY < 780)  && (mouseY > 703)) {

   colores[0] = 0;
   colores[1] = 0;
   colores[2] = 0;
   stroke(colores[0],colores[1],colores[2]);
   fill(colores[0],colores[1],colores[2]);
   ellipse(418, 725, 20, 20);};
}

//Borrador
void borrador(){
  
  if ((mouseX < 374) && (mouseX > 300) 
   && (mouseY < 780)  && (mouseY > 703)) {

   colores[0] = 255;
   colores[1] = 255;
   colores[2] = 255;
   stroke(colores[0],colores[1],colores[2]);
   fill(colores[0],colores[1],colores[2]);
   ellipse(418, 725, 20, 20);};
}

//Guardado de imágenes.
void Guardar(){  
  
  if((mouseX > 824 && mouseX < 889 
   && mouseY > 714 && mouseY < 774)) {  
    
    PImage guardar = get(0,0,1024,700);
    ran = ran + 0.5;
    guardar.save("Imágenes/" + ran + "-imagen.jpg");
    sonido3.trigger();    
    fill(50);
    text("¡Guardado!", 810, 718);    
  }
}

//Reinicia la pantalla.
void Reiniciar(){ 
  
  if((mouseX < 952) && (mouseX > 890) 
   && (mouseY < 774)  && (mouseY > 714)) { 
     
   sonido2.trigger(); 
   background(255);
   fondo = loadImage("Fondo-Paint.png");
   image(fondo, 0,0);
   //Indicador de color del pincel 
   fill(colores[0],colores[1],colores[2]);
   ellipse(418, 725, 20, 20);
  } 
}
     
//Grosor pincel
void Grosor(){  
  
  if (mouseX > 461 && mouseX < 514 
   && mouseY > 714 && mouseY < 774){
    
    sonido4.trigger();
    if (radio > 75){
      
      radio = 75;
    
    }
    else {
      
      radio = radio + 1;
    }
  }
  if (mouseX > 516 && mouseX < 574 
   && mouseY > 714 && mouseY < 774){
    
    sonido5.trigger(); 
    if(radio == 0){
      
      radio = 1;
    }
    else{
      
      radio = radio - 1;
    }
  }  
}

//Logout
void Logout(){

   if (mouseX > 962 && mouseX < 1020 
    && mouseY > 714 && mouseY < 774){               
      sonido7.trigger();
      delay(3600);
      exit();
  }
}

//Canción
void Cancion(){
  
  if (mouseX > 414 && mouseX < 427 
   && mouseY < 738 && mouseY > 719){
    
    sonido6.trigger();
  }
}


   
