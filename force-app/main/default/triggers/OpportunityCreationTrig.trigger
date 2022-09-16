trigger OpportunityCreationTrig on Account (after insert) {
    if(Trigger.isAfter){
        if(Trigger.isInsert){
            OpportunityCreationTrigHandler.opportunityCreation(Trigger.new);
        }
    }
}