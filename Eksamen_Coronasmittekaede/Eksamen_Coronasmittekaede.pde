//Af ukendte årsager som jeg ikke har kunnet finde en løsning til, er den første smittede person markeret med farven blå som tilhører de raske personer, men har hastighed og størrelsen af en smittet person. Dette er ikke meningen. 

// Opsætter et array for alle mulige personer, smittede og ikke smittede.
Person[] Personer = new Person[10000];
PersonSmittet[]  Smittede = new PersonSmittet [10000];


int uger = 0;
int antalraske = 10000;
int antalsmittede = 1;

void setup () {
  size (900, 900);
  background(50);


  for (int i = 0; i < Personer.length; i++) {
    Personer[i] = new Person();
  }
  for (int a = 0; a < Smittede.length; a++) {
    Smittede[a] = new PersonSmittet();
  }
}
// Simulerer et tidspring på en uge hvor hver smittet person smitter 2 andre ved et tryk på venstre museknap
void mousePressed() {
  antalsmittede = antalsmittede * 3; 
  uger = uger + 1;
  if (antalsmittede > 9999){
    antalsmittede = 10000;
  }
  antalraske = 10000 - antalsmittede;
  //Printer data ind i console med hvor mange smittede og raske der er samt hvor mange uger der er gået
  println("Antal raske er", antalraske);
  println("Antal smittede er" , antalsmittede);
  println("Uger gået er", uger);
    
  
}

void draw() {
  
  background(0);

  for (int i = 0; i < antalraske; i++) {
    Personer[i].move();
    Personer[i].display();
  }

  for (int a = 0; a < antalsmittede; a++) {
    Smittede[a].move();
    Smittede[a].display();
  }
 
}
