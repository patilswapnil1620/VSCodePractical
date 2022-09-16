trigger ContactDeleteTrig on Contact (before delete) {
    if(trigger.isBefore){
        if(trigger.isDelete){
            ContactDeleteTrigHandler.contactDelete(trigger.old);
        }
    }
}