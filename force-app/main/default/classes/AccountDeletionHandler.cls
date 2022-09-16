public class AccountDeletionHandler {
    public static void contactDelete(List<Account> oldList){
        set<id> accIds = new set<id>();
        for(Account acc:oldList){
            accIds.add(acc.Id);
        }
        Map<Id,Account> mapAcc = new Map<Id,Account>([SELECT Id,(SELECT Id FROM Contacts) FROM Account WHERE Id IN :accIds]);
        for(Account a:oldList){
            if(mapAcc.get(a.Id).Contacts.size()>2){
                a.addError('can not be delete the account');
            }
        }
    }
    
}