public class CountContactHandler {
 
    public static void countContactInsert(List<Contact> conList){
        List<Account> addAccount = new List<Account>();
        set<id> addCon = new set<id>();
        system.debug('contactlist is:'+conList);
        for(Contact con :conList){
            addCon.add(con.AccountId);
        }
        
        List<Account> acc = [SELECT Id,Count__C,(SELECT Id FROM Contacts) FROM Account WHERE ID IN : addCon];
        system.debug('accountlist is:'+acc);
        for(Account a:acc){
           system.debug('@@@contact size is:'+a.Contacts.size()); 
            a.Count__C=a.Contacts.size();
            addAccount.add(a);
        }
        Update addAccount; 
        system.debug('updated account is:'+addAccount);
    }
    
    public static void countContactDelete(List<Contact> conOldList){
        List<Account> addAccount = new List<Account>();
        set<id> addCon = new set<id>();
        for(Contact con :conOldList){
            addCon.add(con.AccountId);
        }
        List<Account> acc = [SELECT Id,Count__C,(SELECT Id FROM Contacts) FROM Account WHERE ID IN : addCon];
        for(Account a:acc){
            a.Count__C=a.Contacts.size();
            addAccount.add(a);
        }
        Update addAccount;  
    } 
    
}