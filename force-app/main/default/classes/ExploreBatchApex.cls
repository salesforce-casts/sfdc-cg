global class ExploreBatchApex implements Database.Batchable<sObject>, Database.stateful{
   
   global Integer number_batches = 0;

   global Database.QueryLocator start(Database.BatchableContext BC){
      return Database.getQueryLocator('SELECT Id FROM Account');
   }

   global void execute(Database.BatchableContext BC, List<sObject> scope){
	   number_batches += 1;
       
   }

   global void finish(Database.BatchableContext BC){

   }
   


}