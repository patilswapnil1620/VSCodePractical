@isTest
public class ContactDeleteTrigHandlerTest {
    
     static testmethod void method1(){
        Contact con = new Contact();
        con.LastName  = 'Patil';
        con.AccountId = Null;
        insert con;
        try{
            delete con;
            // throw new MyException('An exception should have been thrown by the trigger but was not.');
        }
        catch(Exception e){
            Boolean expectedExceptionThrown =  e.getMessage().contains('You are not authorized to perform this action because contact is not associated to account') ? true : false;
            System.AssertEquals(expectedExceptionThrown, true);
        } 
    } 
}