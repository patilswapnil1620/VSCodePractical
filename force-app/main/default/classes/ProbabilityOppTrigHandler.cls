public class ProbabilityOppTrigHandler{
    public static void addTeamMember(List<Opportunity> oppList) {
        
        List<AccountTeamMember> list_atm = new List<AccountTeamMember>();
        for(Opportunity opp:oppList)
        {
            if(opp.Probability==20)
            {
                AccountTeamMember atm = new AccountTeamMember();
                atm.accountid=opp.accountid;
                atm.teamMemberRole='Manager';
                atm.UserId=opp.Ownerid;
                list_atm.add(atm);
                
            }
        }
        if(!list_atm.isEmpty())
            insert list_atm;
        
    }
}