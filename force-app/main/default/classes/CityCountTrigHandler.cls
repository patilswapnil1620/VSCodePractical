public class CityCountTrigHandler {
    public static void countCity(List<Contact> conList){
        Set<Id> accIds = new Set<Id>();
        List<Account> accountList = new List<Account>();
        Map<String,Contact> conMap = new  Map<String,Contact>();
        system.debug('@@@conList:'+conList);
        for(Contact con : conList){
            if(con.Cities__c!=null && con.AccountId!=null){
                accIds.add(con.AccountId);
                for(Contact co : [Select Id,LastName,AccountId,Cities__c from Contact where AccountId IN:accIds]){
                    conMap.put(co.Cities__c,co);
                }
            }
        }
        List<Account> accList = [SELECT Id, Name,Number_of_Cities__c,(SELECT Id FROM Contacts) FROM Account WHERE Id IN :accIds];
        system.debug('@@@accList:'+accList);
        for(Account acc : accList){
            System.debug('map values are' +conMap);
            system.debug('@@@conMap.size():'+conMap.size());
            system.debug('@@@Number_of_Cities__c is:'+acc.Number_of_Cities__c);
            acc.Number_of_Cities__c = conMap.size();
            accountList.add(acc);
            
        }
       if(!accountList.isEmpty())
        Update accountList;  
    }
}