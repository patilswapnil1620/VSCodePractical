public class ContactDeleteTrigHandler {
    public static void contactDelete(List<Contact> conList){
        for(Contact c: conList){
            if(c.accountId == null){
                c.addError('You are not authorized to perform this action because contact is not associated to account');
            }
        }
    }
}