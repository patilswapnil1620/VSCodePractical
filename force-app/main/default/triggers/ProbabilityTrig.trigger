trigger ProbabilityTrig on Opportunity (after insert,after update) {
if(trigger.isAfter){
 if(trigger.isInsert || trigger.isUpdate){
 ProbabilityOppTrigHandler.addTeamMember(Trigger.new);
        }
   }
}