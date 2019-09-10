public class exploreDynamicSOQL {
	
    public List<Account> aList{set;get;}
    public String q{set; get;}
    
    public void search(){
		String query = 'SELECT Id, Name, Industry, Rating FROM Account WHERE Name LIKE \'%' + q + '%\'';
        aList = Database.query(query);
        System.debug(' 🚀 ' +query);

    }
}