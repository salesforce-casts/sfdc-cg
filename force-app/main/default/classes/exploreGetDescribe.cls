public class exploreGetDescribe {
    public void execute(){        
        Map<String, Schema.SObjectType> gd = Schema.getGlobalDescribe();
        
        for (String apiName : gd.keySet()){
            system.debug(apiName);
            system.debug(gd.get(apiName));
        }
        
        Schema.DescribeSObjectResult[] descResult = Schema.describeSObjects(new String[]{'Account','Contact'});
        
        //alternative syntax
        Schema.DescribeSObjectResult accountSchema = Account.SObjectType.getDescribe();
        
        //alternative syntax
        Schema.DescribeSObjectResult accSchema = Schema.SObjectType.Account;
        
        //get metadata of a field
        Schema.DescribeFieldResult F = Account.Industry.getDescribe();
        Schema.sObjectField T = F.getSObjectField();
    }
}