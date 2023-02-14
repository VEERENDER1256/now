public class sendemail_19_11 
{
   @AuraEnabled
    
    public static integer add (list<string> h,string g,string f)
    
    {
        messaging.SingleEmailMessage AA= new messaging.SingleEmailMessage();
        
        AA.setToAddresses(h);
        AA.setSubject(g);
        AA.setPlainTextBody(f);
        List<Messaging.Email> fff =new List<Messaging.Email>{AA};
        
        messaging.sendEmail(fff);
        return 1;
      }
    
}