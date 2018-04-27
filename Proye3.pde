import processing.sound.*;
SoundFile sonidito;

PFont letrita;
PFont letreta;

int pantalla=0;
int jugador1=0;
int jugador2=0;
int turno=0;
int x,y;
float angle=0.0;

PImage dragon1;
PImage dragon2;
PImage dragon3;
PImage dragon4;
PImage dragon5;

PImage fondonombre;
PImage fondobatalla;
PImage gana;

Dragon Pokemon;
Dragon DChino;
Dragon Escarapatus;
Dragon FuriaNocturna;
Dragon Leviatan;

Dragon j1;
Dragon j2;

void setup(){
  size(900,600);
  
  sonidito=new SoundFile(this,"Celtic Music - Legend.mp3"); 
  
  letrita=loadFont("NuevaStd-Italic-48.vlw");
  letreta=loadFont("Nyala-Regular-48.vlw");
  
  dragon1= loadImage("Charizard.png");
  dragon2= loadImage("Mushu.png");
  dragon3= loadImage("Shadow.png");
  dragon4= loadImage("Toothless.png");
  dragon5= loadImage("volvagia.png");
  
  fondonombre=loadImage("featured.png");
  fondobatalla=loadImage("fnd.png");
  gana=loadImage("fin.png");
  
  Pokemon=new Dragon("Charizard",30,250,1);
  DChino=new Dragon("Mushu",25,250,2);
  Escarapatus=new Dragon("Shadow",40,250,3);
  FuriaNocturna=new Dragon("Toothless",50,250,4);
  Leviatan=new Dragon("Volvagia",40,250,5);
  
}

void draw(){
  
  background(#645151);
  
  switch(pantalla){
    case 0:
      presentacion();
      break;
    case 1:
      presentacion1();
      break;
    case 2:
      titulo();
      break;
    case 3:
      personajes1();
      break;
    case 4:
      personajes2();
      break;
    case 5:
      juego();
      break;
    case 6:
      resultado();
      break;
  }
}

void presentacion(){
  
  sonidito.play();
  
  float sinval=sin(angle);
  float gray=map(sinval,-1,1,0,200);
  background(gray);
  angle+=.1;
  
  pushMatrix();
  textFont(letreta);
  textSize(30);
  fill(#F2EBED);
  text("Los dragones son seres majuestosos que han existido",50,100);
  text("desde hace miles de años, cada uno de ellos",90,140);
  text("cumplen diversas tareas en diferentes mundos",75,180);
  text("o dimensiones, ya sea por mucho o poco tiempo",70,220);
  popMatrix();
  
  textSize(20);
  text("presiona Q para continuar",100,550);
  if(key=='q'||key=='Q'){
    pantalla=1;
  }
  textSize(20);
  text("presiona E para omitir",600,550);
  if(key=='e'||key=='E'){
    pantalla=2;
  }
}

void presentacion1(){
  
  float sinval=sin(angle);
  float gray=map(sinval,-1,1,0,170);
  background(gray);
  angle+=.1;
  
  pushMatrix();
  textSize(20);
  fill(#F2EBED);
  textFont(letreta);
  text("Pero existe un santuario llamado Hydra donde",50,100);
  text("todos los dragones se reune para fortalecer",90,140);
  text("y descansar sus cuerpos. Ademas de que en este",75,180);
  text("lugar las bestias pueden probar quien es el mas",70,220);
  text("fuerte de todas las razas mediante batallas",70,260);
  popMatrix();
  
  textSize(20);
  text("presiona R para continuar",600,550);
  if(key=='r'||key=='R'){
    pantalla=2;
  }
}

void titulo(){
  
  image(fondonombre,0,0);
 
  pushMatrix();
  textFont(letrita);
  fill(#900024);
  textSize(60);
  textAlign(CENTER);
  text("Drage krig",450,300);
  popMatrix();
  
  textSize(25);
  text("presiona P para comenzar",450,500);
  if(key=='p'||key=='P'){
    pantalla=3;
  }
}

void personajes1(){
  
  background(#B7453F);
  
  fill(0);
  textSize(23);
  text("Selecciona a tu personaje jugador1!",300,40);
  text("Presiona:  A.Charizard  S.Mushu  D.Shadow  F.Toothless  G.Volvagia",400,80);
  
  pushMatrix();
  scale(.7);
  translate(50,150);
  Pokemon.display();
  popMatrix();
  pushMatrix();
  scale(.1);
  translate(4100,2500);
  DChino.display();
  popMatrix();
  pushMatrix();
  scale(.3);
  translate(1800,500);
  Escarapatus.display();
  popMatrix();
  scale(.5);
  translate(400,800);
  FuriaNocturna.display();
  pushMatrix();
  scale(.4);
  translate(1400,-100);
  Leviatan.display();
  popMatrix();
  
  if(keyPressed){
   if(key=='a'||key=='A'){
     jugador1=1;
     j1=Pokemon;
     pantalla=4;
   }
   if(key=='s'||key=='S'){
     jugador1=2;
     j1=DChino;
     pantalla=4;
   }
   if(key=='d'||key=='D'){
     jugador1=3;
     j1=Escarapatus;
     pantalla=4;
   }
   if(key=='f'||key=='F'){
     jugador1=4;
     j1=FuriaNocturna;
     pantalla=4;
   }
   if(key=='g'||key=='G'){
     jugador1=5;
     j1=Leviatan;
     pantalla=4;
   }
  }
}
  
  void personajes2(){
    
  background(#B7453F);  
  
  fill(0);
  textSize(23);
  text("Selecciona a tu personaje jugador2!",400,40);
  text("Presiona:  Z.Charizard  X.Mushu  C.Shadow  V.Toothless  B.Volvagia",400,80);
  
  pushMatrix();
  scale(.7);
  translate(50,150);
  Pokemon.display();
  popMatrix();
  pushMatrix();
  scale(.1);
  translate(4100,2500);
  DChino.display();
  popMatrix();
  pushMatrix();
  scale(.3);
  translate(1800,500);
  Escarapatus.display();
  popMatrix();
  scale(.5);
  translate(400,800);
  FuriaNocturna.display();
  pushMatrix();
  scale(.4);
  translate(1400,-100);
  Leviatan.display();
  popMatrix();
  
  if(keyPressed){
   if(key=='z'||key=='Z'){
     jugador2=1;
     j2=Pokemon;
     pantalla=5;
   }
   if(key=='x'||key=='X'){
     jugador2=2;
     j2=DChino;
     pantalla=5;
   }
   if(key=='c'||key=='C'){
     jugador2=3;
     j2=Escarapatus;
     pantalla=5;
   }
   if(key=='v'||key=='V'){
     jugador2=4;
     j2=FuriaNocturna;
     pantalla=5;
   }
   if(key=='b'||key=='B'){
     jugador2=5;
     j2=Leviatan;
     pantalla=5;
   }
  }
  
}

void juego(){
  
  
  
  if(jugador1>0 && jugador2>0){
    pantalla=5;
  }
  
  image(fondobatalla,0,0);
    
  fill(255,0,0);
  rect(55,40,250,20);
  rect(600,40,250,20);
  
  fill(#42EA11);
  rect(55,40,j1.defensa,20);
  rect(600,40,j2.defensa,20);
  
  fill(0);
  textSize(20);
  text("Ataca con W",100,550);
  
  fill(0);
  textSize(20);
  text("Ataca con O",700,550);
  
  if(jugador1==1 && jugador2==2){
    
    pushMatrix();
    scale(.7);
    translate(x+90,y+400);
    Pokemon.display();
    popMatrix();
    
    pushMatrix();
    scale(.1);
    translate(x+6000,y+4300);
    DChino.display();
    popMatrix();
  }
  if(jugador1==1 && jugador2==3){
    
    pushMatrix();
    scale(.7);
    translate(x+90,y+400);
    Pokemon.display();
    popMatrix();
    
    pushMatrix();
    scale(.3);
    translate(x+1700,y+1100);
    Escarapatus.display();
    popMatrix();
  }
  if(jugador1==1 && jugador2==4){
    
    pushMatrix();
    scale(.7);
    translate(x+90,y+400);
    Pokemon.display();
    popMatrix();
    
    pushMatrix();
    scale(.5);
    translate(x+1100,y+660);
    FuriaNocturna.display();
    popMatrix();
  }
  if(jugador1==1 && jugador2==5){
    
    pushMatrix();
    scale(.7);
    translate(x+90,y+400);
    Pokemon.display();
    popMatrix();
    
    pushMatrix();
    scale(.2);
    translate(x+2700,y+1450);
    Leviatan.display();
    popMatrix();
  }
  if(jugador1==1 && jugador2==1){
    
    pushMatrix();
    scale(.7);
    translate(x+90,y+400);
    Pokemon.display();
    popMatrix();
    
    pushMatrix();
    scale(.7);
    translate(x+800,y+400);
    Pokemon.display();
    popMatrix();
  }
  if(jugador1==2 && jugador2==1){
    
    pushMatrix();
    scale(.1);
    translate(x+1300,y+4300);
    DChino.display();
    popMatrix();
    
    pushMatrix();
    scale(.7);
    translate(x+800,y+400);
    Pokemon.display();
    popMatrix();
  }
  if(jugador1==2 && jugador2==2){
    
    pushMatrix();
    scale(.1);
    translate(x+1300,y+4300);
    DChino.display();
    popMatrix();
    
    pushMatrix();
    scale(.1);
    translate(x+6000,y+4300);
    DChino.display();
    popMatrix();
  }
  if(jugador1==2 && jugador2==3){
    
    pushMatrix();
    scale(.1);
    translate(x+1300,y+4300);
    DChino.display();
    popMatrix();
    
    pushMatrix();
    scale(.3);
    translate(x+1700,y+1100);
    Escarapatus.display();
    popMatrix();
  }
  if(jugador1==2 && jugador2==4){
    
    pushMatrix();
    scale(.1);
    translate(x+1300,y+4300);
    DChino.display();
    popMatrix();
    
    pushMatrix();
    scale(.5);
    translate(x+1100,y+660);
    FuriaNocturna.display();
    popMatrix();
  }
  if(jugador1==2 && jugador2==5){
    
    pushMatrix();
    scale(.1);
    translate(x+1300,y+4300);
    DChino.display();
    popMatrix();
    
    pushMatrix();
    scale(.2);
    translate(x+2700,y+1450);
    Leviatan.display();
    popMatrix();
  }
  if(jugador1==3 && jugador2==5){
    
    pushMatrix();
    scale(.3);
    translate(x+200,y+1100);
    Escarapatus.display();
    popMatrix();
    
    pushMatrix();
    scale(.2);
    translate(x+2700,y+1450);
    Leviatan.display();
    popMatrix();
  }
  if(jugador1==3 && jugador2==1){
    
    pushMatrix();
    scale(.3);
    translate(x+200,y+1100);
    Escarapatus.display();
    popMatrix();
    
    pushMatrix();
    scale(.7);
    translate(x+800,y+400);
    Pokemon.display();
    popMatrix();
  }
  if(jugador1==3 && jugador2==2){
    
    pushMatrix();
    scale(.3);
    translate(x+200,y+1100);
    Escarapatus.display();
    popMatrix();
    
    pushMatrix();
    scale(.1);
    translate(x+6000,y+4300);
    DChino.display();
    popMatrix();
  }
  if(jugador1==3 && jugador2==3){
    
    pushMatrix();
    scale(.3);
    translate(x+200,y+1100);
    Escarapatus.display();
    popMatrix();
    
    pushMatrix();
    scale(.3);
    translate(x+1700,y+1100);
    Escarapatus.display();
    popMatrix();
  }
  if(jugador1==3 && jugador2==4){
    
    pushMatrix();
    scale(.3);
    translate(x+200,y+1100);
    Escarapatus.display();
    popMatrix();
    
    pushMatrix();
    scale(.5);
    translate(x+1100,y+660);
    FuriaNocturna.display();
    popMatrix();
  }
  if(jugador1==4 && jugador2==4){
    
    pushMatrix();
    scale(.5);
    translate(x+200,y+660);
    FuriaNocturna.display();
    popMatrix();
    
    pushMatrix();
    scale(.5);
    translate(x+1100,y+660);
    FuriaNocturna.display();
    popMatrix();
  }
  if(jugador1==4 && jugador2==1){
    
    pushMatrix();
    scale(.5);
    translate(x+200,y+660);
    FuriaNocturna.display();
    popMatrix();
    
    pushMatrix();
    scale(.7);
    translate(x+800,y+400);
    Pokemon.display();
    popMatrix();
  }
  if(jugador1==4 && jugador2==2){
    
    pushMatrix();
    scale(.5);
    translate(x+200,y+660);
    FuriaNocturna.display();
    popMatrix();
    
    pushMatrix();
    scale(.1);
    translate(x+6000,y+4300);
    DChino.display();
    popMatrix();
  }
  if(jugador1==4 && jugador2==3){
    
    pushMatrix();
    scale(.5);
    translate(x+200,y+660);
    FuriaNocturna.display();
    popMatrix();
    
    pushMatrix();
    scale(.3);
    translate(x+1700,y+1100);
    Escarapatus.display();
    popMatrix();
  }
  if(jugador1==4 && jugador2==5){
    
    pushMatrix();
    scale(.5);
    translate(x+200,y+660);
    FuriaNocturna.display();
    popMatrix();
    
    pushMatrix();
    scale(.2);
    translate(x+2700,y+1450);
    Leviatan.display();
    popMatrix();
  }
  if(jugador1==5 && jugador2==5){
    
    pushMatrix();
    scale(.2);
    translate(x+400,y+1450);
    Leviatan.display();
    popMatrix();
    
    pushMatrix();
    scale(.2);
    translate(x+2700,y+1450);
    Leviatan.display();
    popMatrix();
  }
  if(jugador1==5 && jugador2==1){
    
    pushMatrix();
    scale(.2);
    translate(x+400,y+1450);
    Leviatan.display();
    popMatrix();
    
    pushMatrix();
    scale(.7);
    translate(x+800,y+400);
    Pokemon.display();
    popMatrix();
  }
  if(jugador1==5 && jugador2==2){
    
    pushMatrix();
    scale(.2);
    translate(x+400,y+1450);
    Leviatan.display();
    popMatrix();
    
    pushMatrix();
    scale(.1);
    translate(x+6000,y+4300);
    DChino.display();
    popMatrix();
  }
  if(jugador1==5 && jugador2==3){
    
    pushMatrix();
    scale(.2);
    translate(x+400,y+1450);
    Leviatan.display();
    popMatrix();
    
    pushMatrix();
    scale(.3);
    translate(x+1700,y+1100);
    Escarapatus.display();
    popMatrix();
  }
  if(jugador1==5 && jugador2==4){
    
    pushMatrix();
    scale(.2);
    translate(x+400,y+1450);
    Leviatan.display();
    popMatrix();
    
    pushMatrix();
    scale(.5);
    translate(x+1100,y+660);
    FuriaNocturna.display();
    popMatrix();
  }
  
    //w y o
    if(turno==0){
      if(key=='w' || key=='W'){
        j2.defensa=j2.defensa-j1.ataque;
        turno=1;
      }
    }
    if(turno==1){
      if(key=='o' || key=='O'){
        j1.defensa=j1.defensa-j2.ataque;
        turno=0;
      }
    }
    
    
    if(j1.defensa<=0 || j2.defensa<=0){
      pantalla=6;
    }
}
  

void resultado(){
  
  image(gana,0,0);
  
  fill(0);
  textAlign(CENTER);
  textSize(50);
  text("GANADOR",450,150);
  
  if(j1.defensa>j2.defensa){
    fill(#32737E);
    textSize(30);
    textAlign(CENTER);
    text("¡Eres el vencedor primer jugador!",450,300);
  }else if(j2.defensa>j1.defensa){
    fill(#32737E);
    textSize(30);
    textAlign(CENTER);
    text("¡Eres el vencedor segundo jugador!",450,300);
  }
  
  fill(0);
  textAlign(CENTER);
  textSize(20);
  text("Presione ENTER para volver a jugar",450,550);
  
  if(keyPressed){
    if(key==ENTER){
      j1.defensa=250;
      j2.defensa=250;
      turno=0;
      pantalla=2;
    }
  }
}

class Dragon{
  
  String nombre;
  int ataque, defensa;
  int tierra;
  
  Dragon(String nombre_, int ataque_, int defensa_,int tierra_){
    nombre=nombre_;
    ataque=ataque_;
    defensa=defensa_;
    tierra=tierra_;
  }
  
  void display(){
    switch(tierra){
      case 1:
        image(dragon1,0,0);
        break;
      case 2:
        image(dragon2,0,0);
        break;
      case 3:
        image(dragon3,0,0);
        break;
      case 4:
        image(dragon4,0,0);
        break;
      case 5:
        image(dragon5,0,0);
        break;
      default:
        break;
    } 
  } 
}