@istest
public class probabilityOppTrigHandler_unitTest{
    
    @testSetup static void testsetUpDataMethod(){
        Account acc= new Account();
        acc.name='test';
        insert acc;
        
        List<Opportunity> oppList = new List<Opportunity>();
        opportunity opp= new opportunity();
        opp.name='test1';
        opp.StageName='Prospecting';
        opp.CloseDate=date.today();
        opp.Probability=20;
        opp.AccountId=acc.Id;
        oppList.add(opp);
        insert oppList;
    }
    @istest static void testMethods(){
        
        test.startTest();
        opportunity opp =[SELECT name,Probability,AccountId,StageName,CloseDate,OwnerId FROM opportunity WHERE Probability=20];
        AccountTeamMember atm=[SELECT Id,UserId,TeamMemberRole, AccountId From AccountTeamMember];
        
        Test.stopTest();
        System.assertEquals(opp.OwnerId, atm.UserId);
    }
}