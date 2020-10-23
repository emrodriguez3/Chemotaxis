int x = 250;
int y = 250;
Bacteria[] bac = new Bacteria[100];
int numberDraw = 0;
void setup(){
  size(500,500);
 
}
 
 void draw(){
  background(255,255,255);
 numberDraw++;
 if(numberDraw  == 1){
 for(int i = 0; i < bac.length;i++){
   bac[i] = new Bacteria((int)(Math.random()*450),(int)(Math.random()*450));
  }
  //System.out.println("bacteria");
  }
  for(int i = 0; i < bac.length;i++){
    bac[i].move();
    bac[i].show();
  }
 }

class Bacteria {
 int positionX;
 int positionY;
 int bacteriaColor[] = new int[3];
 
 Bacteria(int x, int y){
   positionX = x;
   positionY = y;
   for(int i = 0; i < bacteriaColor.length;i++){
     bacteriaColor[i] = (int)(Math.random()*255);
   }
 }
 
 void move(){
   if(positionX % 2 == 0){
    positionX = positionX - (int)(Math.random()*6);
   } else {
    positionX = positionX + (int)(Math.random()*6);
   } 
    if(positionY % 2 == 0){
      positionY = positionY - (int)(Math.random()*6);
    } else {      
   positionY = positionY + (int)(Math.random()*6);
    }
    if(positionX > 500){
      positionX = positionX + (int)(Math.random()*2)+3 *(-1);
    }
    if(positionY > 500){
      positionY = positionY + (int)(Math.random()*4)+5*(-1);
    }
   //System.out.println(positionX + "," + positionY);
 } 
 void show(){
   fill(bacteriaColor[0],bacteriaColor[1],bacteriaColor[2]);
   ellipse(this.positionX,this.positionY,15,15);
 }
}
