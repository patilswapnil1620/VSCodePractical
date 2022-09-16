trigger OwnerOpportunityTrig on Opportunity (after insert) {
    if(Trigger.isAfter){
        if(Trigger.isInsert){
            OwnerOpportunityTrigHandler.addOwner(Trigger.new);
        }
    }
}