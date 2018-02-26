String guess, response;
int x = int(random(1,100));

void setup(){
  size(400,200);
  guess = "";
  response = "";
  textSize(32);
}

void draw(){
  background(0);
  text("Your guess: " + guess, 10, 50);
  text(response, 10, 100);
}

void keyPressed(){
  if (key == ENTER){
    int tal = int(guess);
    //jeres kode skal være her under
    if (tal == x){
      response = "Correct!";  
    } else {
    if (tal > x){
      response = "Too high!"; 
    }
    if (tal < x){
      response = "Too low!"; 
    }
  }
    //jeres kode skal være her over
    
    guess = "";
  } else {
    guess += key;
  }
}