
import java.io.*; 
import java.net.*; 

class TCPServer { 

  public static void main(String argv[]) throws Exception 
    { 
      String msgCliente;
       

      ServerSocket welcomeSocket = new ServerSocket(9090); 
      int i=0; //n�mero de clientes
  
      System.out.println ("Servidor no ar");
      while(true) { 
  
           Socket connectionSocket = welcomeSocket.accept(); 
           i++;
           System.out.println ("Nova conex�o");
           
           BufferedReader socketEntradaCliente = 
              new BufferedReader(new
              InputStreamReader(connectionSocket.getInputStream()));

           DataOutputStream  socketSaidaCliente = 
              new DataOutputStream(connectionSocket.getOutputStream());

                 msgCliente = socketEntradaCliente.readLine();   
                 
                 System.out.println ("Cliente: "+msgCliente);
                                 
                 socketSaidaCliente.writeBytes(new String("Boa noite, voce � o cliente socket de n�"+i)+"\n");
                 socketSaidaCliente.flush();
              } 
          } 
      } 
       

