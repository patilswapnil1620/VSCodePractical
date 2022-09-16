@isTest
public class CityCountTrigHandlerTest {
    @TestSetup static void setupMethod(){
        Account acc = new Account();
        acc.Name='Swapnil';
        acc.Number_Of_Locations__c= 'Pune';
        Insert acc;
        Contact con = new Contact();
        Con.LastName='Patil';
        con.AccountId=acc.Id;
        con.Cities__c='Mumbai';
        Insert con;
  }
    @istest static void testMethods(){
    Test.startTest();
    Contact cont =[SELECT LastName,Cities__C FROM Contact WHERE Cities__C='Mumbai'];
    Account act=[SELECT Id,Name,Number_Of_Cities__c From Account];
    Test.stopTest();
        System.assertEquals(1, act.Number_of_Cities__c);
    } 
}