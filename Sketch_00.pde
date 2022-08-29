import oscP5.*; // 
import netP5.*;
OscP5 oscP5; 

int port; //--> port osc

float band1; 
float band2; 
float band3; 
float band4; 
float band5; 
float band6; 
float band7; 
float band8; 
float band9; 
float band10; 

float[] list1 = new float[0];

void setup()
{
 size(900, 320);
 
 port = 12000; //netWork port
 oscP5 = new OscP5(this, port); //netWork
}

void draw()
{
  background(0);
  stroke(0, 255, 0); 
  
  float high = 0;
  float spot = 0;
  
  for(int i = 0; i < list1.length; i++)
  {
      
   fill(high, spot, random(high, spot));
   
   if(list1[i]>high){
     high = list1[1];
     spot = i;
     stroke(random(0, 255), random(0, 255), random(0, 255));     
     }
   
   ellipse(i * 50, 180, 7, list1[i] * 1000);
   
  }
 
}

void oscEvent(OscMessage theOscMessage) {

  if(theOscMessage.checkAddrPattern("/band1")==true) { 
  if(theOscMessage.checkTypetag("f")) { 
    band1 = theOscMessage.get(0).floatValue(); 
    list1 = splice(list1, band1, 0);
    //println("band1: " + list1[0]);
    return;
    }

  }

  if(theOscMessage.checkAddrPattern("/band2")==true) { 
  if(theOscMessage.checkTypetag("f")) { 
  band2 = theOscMessage.get(0).floatValue(); 
  list1 = splice(list1, band2, 1);
  //println("band2: " + list1[1]);
  return;
  }
  }

  if(theOscMessage.checkAddrPattern("/band3")==true) { 
  if(theOscMessage.checkTypetag("f")) { 
  band3 = theOscMessage.get(0).floatValue(); 
  list1 = splice(list1, band3, 2);
  //println("band3: " + list1[2]);
  return;
  }
  }
  
  if(theOscMessage.checkAddrPattern("/band4")==true) { 
  if(theOscMessage.checkTypetag("f")) { 
  band4 = theOscMessage.get(0).floatValue(); 
  list1 = splice(list1, band4, 3);
  //println("band4: " + list1[3]);
  return;
  }
  }
  
  if(theOscMessage.checkAddrPattern("/band5")==true) { 
  if(theOscMessage.checkTypetag("f")) { 
  band5 = theOscMessage.get(0).floatValue(); 
  list1 = splice(list1, band5, 4);
  //println("band5: " + list1[4]);
  return;
  }
  }
  
  if(theOscMessage.checkAddrPattern("/band6")==true) { 
  if(theOscMessage.checkTypetag("f")) { 
  band6 = theOscMessage.get(0).floatValue(); 
  list1 = splice(list1, band6, 5);
  //println("band6: " + list1[5]);
  return;
  }
  }
  
  if(theOscMessage.checkAddrPattern("/band7")==true) { 
  if(theOscMessage.checkTypetag("f")) { 
  band7 = theOscMessage.get(0).floatValue(); 
  list1 = splice(list1, band7, 6);
  //println("band6: " + list1[6]);
  return;
  }
  }
  
  if(theOscMessage.checkAddrPattern("/band8")==true) { 
  if(theOscMessage.checkTypetag("f")) { 
  band8 = theOscMessage.get(0).floatValue(); 
  list1 = splice(list1, band8, 7);
  //println("band8: " + list1[7]);
  return;
  }
  }
  
  if(theOscMessage.checkAddrPattern("/band9")==true) { 
  if(theOscMessage.checkTypetag("f")) { 
  band9 = theOscMessage.get(0).floatValue(); 
  list1 = splice(list1, band9, 8);
  //println("band9: " + list1[8]);
  return;
  }
  }
  
  if(theOscMessage.checkAddrPattern("/band10")==true) { 
  if(theOscMessage.checkTypetag("f")) { 
  band10 = theOscMessage.get(0).floatValue(); 
  list1 = splice(list1, band10, 9);
  //println("band10: " + list1[9]);
  return;
  }
  }

}
