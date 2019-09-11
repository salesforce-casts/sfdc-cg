public class ExploreDynamicSearchVariantTwoController {
    public List<sobject> aList{set;get;}
    public String q{set; get;}
    public String message{set; get;}
    public boolean cbaccount{set;get;}
    public boolean cbcandidate{set;get;}


    
    public String objectName;
    
    public void search(){
        String query;
        
        if(cbaccount == true)
            objectName = 'Account';
        else if(cbcandidate == true)
            objectName = 'Outlet__c';            
        
        query = 'SELECT Id, Name FROM '+ objectName +' WHERE Name LIKE \'%' + q + '%\'';
        
        
        aList = Database.query(query);
        
        if(aList.size() <1)
            message='Dang!!!! No records found';
        else
            message = '';

    }
}