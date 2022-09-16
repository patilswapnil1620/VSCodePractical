public class OpportunityCreationTrigHandler {
    public static void opportunityCreation(List<Account> accList){
        List<Opportunity> lines = new List<Opportunity>();
        for(Account acc:accList){
            List<String> Locationlst = acc.Number_of_Locations__c.split(',');
            for(String s : Locationlst)
            {
                Opportunity opp = new Opportunity();
                opp.AccountId=accList[0].id;
                opp.StageName = 'Prospecting';
                opp.CloseDate = Date.today();
                opp.Name=acc.Name + ':'+Locationlst;
                lines.add(opp);
            }
            insert lines;
        }    
    }
    
}