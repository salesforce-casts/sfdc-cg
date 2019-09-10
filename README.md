# Practice well and make me proud folks 🍕



# SOQL & DML
 - SOQL query to list all the records
    1. use WHERE Clause 
    2. LIMIT OFFSET operator
    3. Order By records
 - Loop over through the list of returned records and assign new values to the fields. 
 - Update the list
 - Insert couple of records to the above list
 - Upsert the list
 - Try to get the count of the records


## SOQL & Collections

 - fetch list of Account records and have one inner query to fetch contacts, one inner query to fetch opportunities and one inner query to fetch cases. 
 - Create a map of account ids to contact records. `Map<Id, List<Contact>>`
 - Create a map of account ids to case records. `Map<Id, List<Case>>`
 - Create a map of account ids to opportunity records. `Map<Id, List<Opportunity>>`
 - In the VF page loop over all the accounts and its contacts, cases and Opportunities. `<apex:repeat></apex:repeat>`
 
 
 
 ## Standard Controllers
 
 - Create a VF page and assosiate it with a standard/custom object
 - Embed the VF page in the assosiated object's record page
 - Try to create three buttons 
   1. One button pointing to a standard method ex save, cancel, edit
   2. One button pointing to a method in an extension 
   3. One button with three implementations in 2/3/4 extensions. 

## Batch Apex
			- Create a VF page 
			- Invoke apex method on click on a button 
			- From apex method invoke Batch Apex
