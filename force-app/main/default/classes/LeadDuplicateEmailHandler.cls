public class LeadDuplicateEmailHandler{
    public static void duplicateEmail(List<Lead> leadList){
        Map<String,contact> conMap = new  Map<String,contact>();
        List<Contact> conList = [SELECT Id, Email FROM Contact];
        for(Contact con:conList){
            conMap.put(con.Email,con);
        }
        for(Lead l:leadList){
            if(l.Email !=null && (Trigger.isInsert || (l.Email !=conMap.get(l.id).Email))){
                if(conMap.ContainsKey(l.Email)){
                    l.Email.addError('Duplicate Email Found');
                }
            }
        }
    }
}