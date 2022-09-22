public class AccountEmail {
 @Auraenabled
    public static list<Account> find(){
        return [Select id,Name from Account limit 50];
    }
     @Auraenabled
    public static list<Account> findByName(string searchkey){
        string name ='%' + searchkey +'%';
        return [Select id,Name from Account where Name Like:name limit 50];
        // commented 22-09-2022
    }
}