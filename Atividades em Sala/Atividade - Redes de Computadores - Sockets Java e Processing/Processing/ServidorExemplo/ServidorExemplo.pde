import processing.net.*;

Server myServer;
int val = 0;

void setup() {
  frameRate = 1;
  size(200, 200);
  myServer = new Server(this, 5223); 
}

void draw() {
 
}

void serverEvent(Server someServer, Client someClient) {
  println("Cliente conectado!");
}

void disconnectEvent(Client someClient){
  println("Cliente desconectado!");
}
