@istest
public class testsamp 
{
    @istest
public static void acc()
    {
        list<account> ac= [select name from account  where phone=null ];
       
        
        for(account EA: ac)
        {
            EA.phone='000000000';
        }
        update ac;
        system.assertEquals('000000000', '000000');
    }

}