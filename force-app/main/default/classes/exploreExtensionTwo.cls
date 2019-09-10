public class exploreExtensionTwo {
    private Account acct;

    public exploreExtensionTwo(ApexPages.StandardController controller) {
        this.acct = (Account)controller.getRecord();
        System.debug(' 🚀 ' +acct);
        /**
        https://developer.salesforce.com/docs/atlas.en-us.pages.meta/pages/apex_ApexPages_StandardController_methods.htm
        
        */
        
    }

    
    public void click(){
        System.debug(' 🚀 ');
    }
}