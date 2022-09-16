trigger ContactCreationTrig on Contact (after insert,after update) {
    if(Trigger.isAfter){
        if(Trigger.isInsert || Trigger.isUpdate){
            ContactCreationTrigHandler.contactCreation(Trigger.new);
        }
    }
}