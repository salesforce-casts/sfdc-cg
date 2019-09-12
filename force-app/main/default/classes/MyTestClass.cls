@isTest
private class MyTestClass {   
    @isTest static void myTest() {
        
        
        Account a = new Account();
        a.Name = 'Test';
        
        insert a;
        
        List<Contact> contactsList = new List<Contact>();

        Contact contactOne = new Contact();
        contactOne.LastName = 'Test Contact One';
		contactOne.AccountId = a.Id;
        
        Contact contactTwo = new Contact();
        contactTwo.LastName = 'Test Contact Two';
		contactTwo.AccountId = a.Id;
        
		contactsList.add(contactOne);
		contactsList.add(contactTwo);
        
        insert contactsList;
        
        Outlet__c o = new Outlet__c();
        o.Name = 'Test';
        o.Account__c = a.Id;
        
        insert o;
        
        //even before you invoke this, fix all the dependencies
        exploreAdvancedSOQL eas = new exploreAdvancedSOQL();
        eas.implement();
    }
    
    static testMethod void testName() {
        
    }
}