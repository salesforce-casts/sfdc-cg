public class exploreBatchInvocationController {
    
    public void invokeBatch(){
        ExploreBatchApex eba = new ExploreBatchApex();
        Database.executeBatch(eba, 2);
    }
    
    
}