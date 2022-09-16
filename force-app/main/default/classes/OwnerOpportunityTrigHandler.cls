//Trigger to adds the Opportunity Owner into the sales team automatically whenever the Opportunity is created.
public class OwnerOpportunityTrigHandler {
    public static void addOwner(List<Opportunity> oppList){
        List<OpportunityTeamMember> listOppTeamMem = new List<OpportunityTeamMember>();
           for(Opportunity opp :oppList){
            OpportunityTeamMember OTM = new OpportunityTeamMember();
            OTM.OpportunityId = opp.Id;
            OTM.TeamMemberRole = 'manager'; 
            OTM.UserId = opp.OwnerId;
            listOppTeamMem.add(OTM);             
        }
        
        if(listOppTeamMem.size() > 0){
            insert listOppTeamMem;
        }
     
    }
}