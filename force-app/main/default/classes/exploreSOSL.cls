public class exploreSOSL {
    public void execute(){
        
        List<List<SObject>> allRecords = [FIND '*sa*' IN ALL FIELDS RETURNING Account(Id, Name, Rating, Industry),Contact(FirstName,LastName,Department)];
        
        
        Account[] searchAccounts = (Account[])allRecords[0];
        Contact[] searchContacts = (Contact[])allRecords[1];
        
        for (Account a : searchAccounts) {
            System.debug(a.Name);
        }
        System.debug('Found the following contacts.');
        for (Contact c : searchContacts) {
            System.debug(c.LastName + ', ' + c.FirstName);
        }
    }
}