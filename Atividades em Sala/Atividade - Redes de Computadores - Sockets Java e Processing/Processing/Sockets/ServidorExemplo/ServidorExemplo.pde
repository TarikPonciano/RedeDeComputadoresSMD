//Eric Vinicius - Redes de Computadores


//Um servidor envia e recebe dados de seus clientes associados (outros programas conectados a ele). 
//Quando um servidor é iniciado, ele começa a escutar conexões na porta especificada pelo parâmetro da porta. 
//Os computadores têm muitas portas para a transferência de dados e alguns são normalmente usados, portanto, não selecione um deles. 
//Por exemplo, os servidores da web geralmente usam a porta 80 e o email POP usa a porta 110.  

import processing.net.*; 

 
 

Server myServer;
int val = 0;

void setup() {
  size(200, 200);//tamanho da janela 
  // inicia myServer na porta 5204
  myServer = new Server(this, 5204); 
}

void draw() {
  
  background(val);
  myServer.write(val);
}

void keyPressed(){
  switch(key){
    case 'a':
      val= val + 10;
      break;
    case 's':
      val= val - 10;
      break;
  }
  
  if(val<0)
    val = 0;
  if(val>255)
    val = 255;
    
    println(val);

}

/* MÉTODOS EXTRAS CLASSE SERVER:
  
 - disconnect()   se Desconecta de um cliente em especifico passado como parâmetro.
 - active()   Retorna true se o server ainda ta ativo(Serve pra testar).
 - available()   Returns the next client in line with a new message.
 - stop()   Desconecta todos os clients e para o funcionamento do server.
 - write()   Escreve dados para todos os clientes conectados
*/
