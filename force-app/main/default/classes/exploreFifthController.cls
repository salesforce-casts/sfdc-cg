public class exploreFifthController {
    
    public List<String> locations {set; get;}
    public List<Account> accounts {set; get;}
    
    public String name{set; get;}
        public String location{set; get;}
    
    public Set<Lead> leads {set; get;}
    
    public exploreFifthController(){
        name = apexpages.currentpage().getparameters().get('name');
        location = apexpages.currentpage().getparameters().get('location');
    }
    
    public void loopOver(){
        /**
            locations = new List<String>();
            
            locations.add('Hyderabad');
            locations.add('Delhi');
            locations.add('Chennai');
            
            System.debug(' 🚀 ' +locations);
        */
        
        accounts = [SELECT Id, Name, Industry, Rating FROM Account];
    }
    
}