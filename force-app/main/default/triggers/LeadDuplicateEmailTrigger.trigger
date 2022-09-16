trigger LeadDuplicateEmailTrigger on Lead (before insert,before update) {
    if(Trigger.isBefore){
        if(Trigger.isInsert || Trigger.isUpdate){
            LeadDuplicateEmailHandler.duplicateEmail(Trigger.new);
        }
    }
}