public class ExceptionHandlingController {
public String name{set; get;}
public String accNumber {set; get;}


public void execute(){

    try{
        exceptionHandlingHandler.executeHandler();
       
        
    }catch(Exception e){
        System.debug(' 🚀 ' + e.getStackTraceString());
    }
    
    }
}