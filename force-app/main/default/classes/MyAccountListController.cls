public class MyAccountListController {
    @AuraEnabled
    public static list<Account> fetchAccount(string searchKeyword){
        list<Account> returnList = new list<Account>();
        string searchKey= string.isBlank(searchKeyword) ? '%%' : searchKeyword + '%';
        returnList = [select Id,Name,industry from account where Name Like:searchKey limit 15];
        
        return returnList;
    }
    
}