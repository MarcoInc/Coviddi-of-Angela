class Amuchina{
  PImage amuchina;
  float posx,posy;
  float speedx,speedy;
  int dim1,dim2;
  int cornx, corny;
  
  Amuchina(float posx,float posy){
    this.dim1=48;
    this.dim2=102;
    this.cornx=dim1/2;
    this.corny=dim2/2;
    
    amuchina=loadImage("amuchina.png");
    amuchina.resize(dim1,dim2);
    this.posx=posx+dim1/2;
    this.posy=posy+dim2/2;
    speedx=random(-3,3);
    speedy=random(-3,3);   
  }
  
   void move(){
      posx=posx+speedx;
      posy=posy+speedy;
      if(posx>=width-dim1/2){    //right border
        speedx=-speedx;
      }
      else if(posx<=dim1/2){      //left border
        speedx=-speedx;
      }
     if(posy>=height-dim2/2){      //bottom border
         speedy=-speedy;
  
     }
     else if(posy<=dim2/2){        //top border
        speedy=-speedy;
     }
   }
  
  void display(){
    pushMatrix();
      noStroke();
      fill(0,0,0,0);
      rectMode(CENTER);
      rect(posx,posy,dim1,dim2);
      
    popMatrix();
    
    pushMatrix();
        imageMode(CENTER);
        image(amuchina,posx,posy);
    popMatrix(); 
  }
  
  void run(){
    display();
    move();   
  }
}
