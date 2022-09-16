trigger CountContact on Contact (after insert,after delete) {
    if(Trigger.isAfter){
        if(Trigger.isInsert){
            CountContactHandler.countContactInsert(Trigger.new);
        }
        if(Trigger.isDelete){
            CountContactHandler.countContactDelete(Trigger.old);
        }
    }
}