public class exploreDynamicSearch {
    
    
    public List<sobject> aList{set;get;}
    public String q{set; get;}
    public String message{set; get;}
    public boolean cbaccount{set;get;}
    public boolean cbcandidate{set;get;}
    public List<Account> bList{set;get;}
    public List<Outlet__c> cList{set;get;}
    
    public String objectName;
    
    public void search(){
        String query;
        
        if(cbaccount == true)
            objectName = 'Account';
        else if(cbcandidate == true)
            objectName = 'Outlet__c';            
        
        query = 'SELECT Id, Name FROM '+ objectName +' WHERE Name LIKE \'%' + q + '%\'';
        
        if(cbaccount == true)
            bList = Database.query(query);
        else if(cbcandidate == true)
            cList = Database.query(query);

        
        if(bList.size() <1)
            message='Dang!!!! No records found';
        else
            message = '';
        System.debug(bList);
    }
    
}