public class messagingw
{
    public void msg() 
    {
       messaging.SingleEmailMessage AA= new messaging.SingleEmailMessage();
        
       
        list<string> cc= new list<string>();
        
       cc.add('hviru108@gmail.com');
        
        AA.setToAddresses(cc);
        AA.setSubject('This is Important');
        AA.setPlainTextBody('you are important');
        List<Messaging.Email> fff =new List<Messaging.Email>{AA};
        
            Messaging.sendEmail(fff);
    }
}