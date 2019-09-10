public class ExporeBatchHandler {
	
    public void invokeMethod(Database.BatchableContext bc, Integer number_batches){
        System.debug(' 🚀 ' +bc.getJobId());
		System.debug(' 🚀 ' +number_batches);
    }
}