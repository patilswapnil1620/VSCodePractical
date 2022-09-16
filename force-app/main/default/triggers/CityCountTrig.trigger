trigger CityCountTrig on Contact (after insert,after update) {
    if(Trigger.isAfter){
        if(Trigger.isInsert || Trigger.isUpdate){
            CityCountTrigHandler.countCity(Trigger.new);
        }
    }    
}