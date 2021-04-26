//Biblioteca criada pela própria dona do Processing para  ler e gravar dados em máquinas na Internet. 
//Permite a criação de clientes e servidores. 
//Um servidor se conecta a uma lista de clientes para ler e gravar dados. 
//Um cliente é capaz de ler e gravar dados em um servidor.
  
import processing.net.*; 

Client myClient;//Cria o Cliente 
int dataIn;//dados a serem recebidos do servidor 
 
void setup() { 
  size(200, 200); 
  // Conecta-se no localhost na porta 5204.
  myClient = new Client(this, "127.0.0.1", 5204); //
} 
 
void draw() { 
  if (myClient.available() > 0) { 
    dataIn = myClient.read(); 
  } 
  background(dataIn); 
} 


/*EXTRAS

  
stop()   Desconecta do servidor
active()   Retorna true se este cliente ainda estiver ativo
ip()   Retorna o endereço IP da máquina como uma string
available()   Retorna o número de bytes no buffer esperando para ser lido
clear()   Limpa o buffer
read()   Retorna um valor do buffer
...
write()   Escreve bytes, chars, ints, bytes[], Strings

*/
