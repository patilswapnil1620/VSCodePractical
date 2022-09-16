public class CreateContactcls {
    @Auraenabled
    public static string createContact(contact contobj){
        system.debug('contact::'+contobj.firstName);
        insert contobj;
        return contobj.Id;
    }
}