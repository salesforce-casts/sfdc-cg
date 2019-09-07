public class exploreSOQLController {
    
    public List<Account> accounts{set; get;}
    
    public exploreSOQLController(){
        accounts = [SELECT Id, Name,(SELECT Id, Name FROM Contacts) FROM Account ORDER BY Name ASC LIMIT 3 OFFSET 5];
       	System.debug(' 🚀 ' +accounts); 
    }
}