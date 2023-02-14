public class sobjectlcomp 
{
    @AuraEnabled
    
    public static list<contact> acco()
    {
        list<contact> a=[select firstname,lastname,phone,id  from contact ];
        return a;
    }

}