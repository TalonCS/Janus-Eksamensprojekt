// Heri laver jeg en class for raske personer og bestemmer hvordan de opfører sig

class Person {
  int x, y, fartx, farty;
  
  Person() {
   this.x = int(random(1, width));
   this.y = int(random(1, height));
   
   this.fartx = int(random(-5, 5));
   this.farty = int(random(-5, 5));
  }

  void display() {
   circle(this.x, this.y, 2);
   fill(0,0,255);
}

void move() {
  this.x = this.x + this.fartx;
  this.y = this.y + this.farty;
  
  if (this.x < 1 || this.x > width) {
    this.fartx = this.fartx * -1;
  }
  
  if (this.y < 1 || this.y > width) {
    this.farty = this.farty * -1;
  }
}}
