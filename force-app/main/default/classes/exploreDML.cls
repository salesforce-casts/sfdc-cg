public class exploreDML {
    
    public void putItInAnonymous(){
        
        
        
        //1. Dont ignore the mandate fields
        //2. Query all the fileds that you are using in DML operations
        
        //Instantiate the object
        Outlet__c o = new Outlet__c();
        //stuff all the fields 
        o.Name = 'Testing';
        insert o;
        
        
        Outlet__c out = new Outlet__c(Name='Testing Alt Syntax');
        insert out;
        System.debug(' 🚀 ' +out);
        
        
        //SOQL
        String recordId = 'a002v000046daBv';
        
        Outlet__c outletRecord = [SELECT Id, Name FROM Outlet__c WHERE Id =: recordId];
        
        //Update
        Outlet__c outl = new Outlet__c();
        outl.Id = outletRecord.Id;
        outl.Name = outletRecord.Name+' Updated';
        
        update outl;
        
        
        //Update Alternative Syntax
        Outlet__c oRec = new Outlet__c(Id = 'a002v000046daGm', Name='HEY!!!!');
        update oRec;
        
        
        String recordId1 = 'a002v000046daBv';
        
        Outlet__c outletRecord1 = [SELECT Id FROM Outlet__c WHERE Id =: recordId1];
        delete outletRecord1;
        
        //Alternative Syntax
        delete [SELECT Id FROM Outlet__c WHERE Id =: recordId1];
        
    }
    
    public void bulkInsertOutlets(){
        
        List<Outlet__c> outletRecords = new List<Outlet__c>(); 
        
        //do not use this 
        for(Integer i = 0; i < 10 ; i++){
            //Instantiate the object
            Outlet__c o = new Outlet__c();
            //stuff all the fields 
            o.Name = 'Testing';
            
            outletRecords.add(o);
        } 
        
        
        insert outletRecords;
        
        //Enhanced for loop
        for(Outlet__c o : outletRecords){
            
        }
        
        //TODO
        //Map<Id, Outlet__c> outletMap = new Map<Id, Outlet__c>(SELECT Id, Name FROM Outlet__c);
        //System.debug(' 🚀 ' +outletMap);
    }
    
    
    public void howUpsertWorks(){
        List<Outlet__c> o = [SELECT Id FROM Outlet__c];
        
        for(Outlet__c outlet : o){
            outlet.Name += ' Modified in for loop'; 
        }
        
        Outlet__c oRec = new Outlet__c();
        oRec.Name = 'Testing';
        
        o.add(oRec);
        
        upsert o;
    }
    
}