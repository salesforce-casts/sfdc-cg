public class exploreMapsController {

    public List<Account> accountsOwned { set; get; }   
	

    
    public Map<Id, List<Contact>> accountToContactsMap;
    
    
    //declaration
    public List<String> accountsOwnedList;
    
    public List<Contact> contacts;
    
    //bulkification 
    public void process(){
        accountToContactsMap = new Map<Id, List<Contact>>();
        accountsOwned = [SELECT Id, Name FROM Account WHERE CreatedById = '0052v00000dKdpv'];
        
        //instance
        accountsOwnedList = new List<String>();
        
        //add values
        for(Integer i=0; i< accountsOwned.size(); i++){
			accountsOwnedList.add(accountsOwned[i].Name);            
        }

        
        contacts = [SELECT Id, Name, AccountId FROM Contact WHERE AccountId IN:accountsOwnedList];
        /**
        for(Contact c : contacts){
            accountToContactsMap.put(c.accountId, c);   
        }
		*/     
        
    }    	
    
    
    public void postProcess(){
        
        List<Account> account1 = [SELECT Id, Name FROM Account WHERE Rating = 'Hot'];
        List<Account> account2 = [SELECT Id, Name FROM Account WHERE Rating = 'Warm'];
        List<Account> account3 = [SELECT Id, Name FROM Account WHERE Rating = 'Cold'];
        
        List<Account> h = new List<Account>();
        List<Account> w = new List<Account>();
        List<Account> c = new List<Account>();
        
        
        List<Account> account4 = [SELECT Id, Name FROM Account WHERE Rating != NULL ];
        
        for(Account acc : account4){
            if(acc.Rating == 'Hot'){
                h.add(acc);
            }else if(acc.Rating == 'Cold'){
                c.add(acc);
            }else if(acc.Rating == 'Warm'){
                w.add(acc);
            }else{
            }
        }
        
        Map<String, List<Account>> AccountRatingToAccounts = new Map<String, List<Account>>();
        AccountRatingToAccounts.put('hot', h);
        AccountRatingToAccounts.put('cold', c);
        AccountRatingToAccounts.put('warm', w);

    }
}