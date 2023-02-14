public class test11_01 
{
    public void acc()
    {
        list<account> ac= [select name from account  where phone=null];
       
        
        for(account EA: ac)
        {
            EA.phone='000000000';
        }
        update ac;
    }

}