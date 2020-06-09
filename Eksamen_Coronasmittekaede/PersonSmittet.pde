// Heri laver jeg en class for smittede personer og bestemmer hvordan de opfører sig

class PersonSmittet {
  int x, y, fartx, farty;
  
  PersonSmittet() {
   this.x = int(random(1, width));
   this.y = int(random(1, height));
   
   this.fartx = int(random(-2, 2));
   this.farty = int(random(-2, 2));
  }

  void display() {
   circle(this.x, this.y, 4);
   fill (255,0,0);
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
