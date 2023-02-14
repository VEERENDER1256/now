trigger trigger02_01_23 on Contact (before insert) 
{
    if(trigger.isbefore && trigger.isinsert)
    {
        messaging.SingleEmailMessage SS= new messaging.SingleEmailMessage();
        list<string> kk = new list<string>{'hviru108@gmail.com'};
        ss.setToAddresses(kk);
        ss.setSubject('contact is to be inserted');
        ss.setPlainTextBody('this is before insert email');
        list<Messaging.Email> LL =new    list<Messaging.Email>{SS};
        Messaging.sendEmail(LL);
    }

}