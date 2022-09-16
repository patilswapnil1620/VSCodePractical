trigger AccountDeletion on Account (before delete) {
    if(Trigger.isBefore){
        if(Trigger.isDelete){
            AccountDeletionHandler.contactDelete(trigger.old);
        }
    }
}