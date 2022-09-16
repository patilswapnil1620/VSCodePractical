@isTest
public class LeadDuplicateEmailHandlerTest {
    @testSetUp static void myMethod(){
        contact con = new contact();
        con.LastName = 'PATIL';
        con.Email = 'sp1@gmail.com';
        insert con;
        
        Lead l = new Lead();
       
        l.Email = con.Email;
        insert l;
        
    }
}