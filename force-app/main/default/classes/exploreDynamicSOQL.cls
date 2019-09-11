public class exploreDynamicSOQL {
	
    public List<Account> aList{set;get;}
    public String q{set; get;}
    public String message{set; get;}
    
    public Boolean messageFlag{set; get;}
    
    public String messageFromAF {set; get;}
    public void search(){
		String query = 'SELECT Id, Name, Industry, Rating FROM Account WHERE Name LIKE \'%' + q + '%\'';
        aList = Database.query(query);
        if(aList.size() < 1)
	        message = 'DANG!!!! No records found';
        else{
            message = '';
        }
        System.debug(' 🚀 ' +query);

    }
    
    public void invokedViaAF(){
		messageFromAF = 'Hey!!!';
    }
}