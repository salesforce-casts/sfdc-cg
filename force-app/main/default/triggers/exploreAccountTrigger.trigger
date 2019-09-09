trigger exploreAccountTrigger on Account (before insert, after update) {
    for(Account a : Trigger.new){
        
        /**
         * 1. Always bulkify
         * 2. refactor multiple triggers into a single Trigger
         * 2. no DML inside for loops
         * 3. no SOQL inside for loops
         * 4. use handlerDesignPatterns
         * 5. bottle neck on after events when we try to perform DML operations on the same object
         */
        
        /**
         * Context Variables 
         * Trigger.new
         * Trigger.old
         * Trigger.newMap
         * Trigger.oldMap
         * Trigger.isInsert
         * Trigger.isUpdate
         * Trigger.isDelete
         * Trigger.isUndelete
         * Trigger.isAfter
         * Trigger.isBefore  
         */  
        
        if(Trigger.isInsert && Trigger.isBefore){
			//do something in before insert event   
			/*exploreAccountTriggerHandler aeth = new exploreAccountTriggerHandler();
            aeth.invokeBeforeInsert();
            */
            exploreAccountTriggerHandler.invokeBeforeInsert();
        }        

        if(Trigger.isAfter && Trigger.isUpdate){
			//do something in after Update event            
			/*exploreAccountTriggerHandler aeth = new exploreAccountTriggerHandler();
            aeth.invokeAfterUpdate();
            */
            exploreAccountTriggerHandler.invokeAfterUpdate();
        }

            
        
    }
}