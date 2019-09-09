//Assumption → We have an account record and it's associated with child records


// Trigger on Account
// condition →  if the name is 'Test'
// update all the child records names with testing contact



trigger updateContactsonAccount on Account(before update) {
    System.debug(' 🚀 ' +Trigger.new);
	System.debug('🔥 ' +Trigger.old);
    List<Id> accountsList = new List<Id>();
    
    //5000
    for(Account a : Trigger.new){
        if(a.Name == 'Test'){
            accountsList.add(a.Id);
        }   
    }
    
    List<Contact> contactsList = [SELECT Id FROM Contact WHERE AccountId IN :accountsList];
    
    for(Contact c : contactsList){
        c.LastName = 'Updated';
    }
    
    update contactsList;
    
}