@isTest
private class MyTestClass {   
    @isTest static void myTest() {
        
        
        String uniqueUserName = 'standarduser' + DateTime.now().getTime() + '@testorg.com';
        // This code runs as the system user
        Profile p = [SELECT Id FROM Profile WHERE Name='Standard User'];
        User u = new User(Alias = 'standt', Email='standarduser@testorg.com',
                          EmailEncodingKey='UTF-8', LastName='Testing', LanguageLocaleKey='en_US',
                          LocaleSidKey='en_US', ProfileId = p.Id,
                          TimeZoneSidKey='America/Los_Angeles',
                          UserName=uniqueUserName);
        
        System.runAs(u) {
            
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
            
            Test.startTest();
            
            //even before you invoke this, fix all the dependencies
            exploreAdvancedSOQL eas = new exploreAdvancedSOQL();
            eas.implement();
            List<Account> accLists = eas.fetchAccounts();
            //system.assert(accLists.size() < 5);
            //System.assertEquals(5, accLists.size());
            Test.stopTest();
            
        }
    }
    
    static testMethod void testName() {
        
    }
}