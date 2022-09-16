public class ContactCreationTrigHandler {
    public static void contactCreation(List<Contact> conList){
        List<Contact_Relationship__c> contactRelationships = new List<Contact_Relationship__c>();
        
        for(Contact con : conList) {
            if(con.Contact_Relationship__c==true){
            Contact_Relationship__c contactRelationship = new Contact_Relationship__c();
            contactRelationship.Contact__c = con.id;
            contactRelationships.add(contactRelationship);
            }
        }
        insert contactRelationships;
    }
}