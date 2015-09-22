Bacteria source[];

 void setup()   
 {     
 	size(400, 400);
 	background(0);

 	int x = (int)(Math.random()*300)+50;
    int y = (int)(Math.random()*300)+50; 
    source = new Bacteria[40];  
    for(int i = 0; i<source.length; i++){
 		source[i] = new Bacteria(x, y);
 	}
}   
 void draw()   
 {    
 	for(int s = 0; s<source.length; s++){
 		source[s].xPos += (int)(Math.random() * 3) -1;
 		source[s].yPos += (int)(Math.random() * 3) -1;
 		source[s].show();
 	}  
 }  
 class Bacteria    
 {     
 	int xPos, yPos, bColor;
 	Bacteria(int x, int y)
 	{
 		bColor = (int)(Math.random() * #FAABDA);
 		xPos = x;
 		yPos = y;
 	}
 	void move(){
 		xPos += (int)(Math.random()*3)-1;
 		yPos += (int)(Math.random()*3)-1;
 	}
 	void show(){
 		fill(bColor);
 		ellipse(xPos, yPos, 10, 10);
 	}
 	//lots of java!   
 }
