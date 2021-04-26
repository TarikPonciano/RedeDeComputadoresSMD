
package socket;
import java.io.*; 

import java.net.*; 
class TCPClient { 

    public static void main(String argv[ ]) throws Exception 
    { 
        String sentence; 
        String modifiedSentence; 

        BufferedReader teclado = 
          new BufferedReader(new InputStreamReader(System.in));
        
        
        
        Socket clientSocket;
        System.out.println ("Abrindo conexão na porta 9090 ");
        
        try {
        
        	clientSocket = new Socket("localhost", 9090);
            
        	DataOutputStream socketSaidaServer = 
                new DataOutputStream(clientSocket.getOutputStream());               
            
            BufferedReader socketEntrada = 
                    new BufferedReader(new
                    InputStreamReader(clientSocket.getInputStream())); 
            
            
                    System.out.println ("Digite a mensagem e tecle enter");
                    sentence = teclado.readLine(); 

                    socketSaidaServer.writeBytes(sentence + '\n');
                    socketSaidaServer.flush();
                    
                    System.out.println ("Mensagem enviada");               
                    

                    modifiedSentence = socketEntrada.readLine();
                    
                    //
      //              listener.notify(modifiedSentence);
                    

                    System.out.println("Servidor: " + modifiedSentence); 
                    
                    clientSocket.close(); 
                               
                
        }catch (java.net.ConnectException e){
        	System.out.println ("Servidor fora do ar");       	
        	
        }

           
       
      } 
}