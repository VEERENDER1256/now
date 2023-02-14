public class class_sobject 
{
    public string nm  {get;set;}  
    public string msg  {get;set;}
    public void abc()
       
{
    TRY
    {
    contact n= new contact();
    n.lastname =nm;
    insert n;
    msg = 'CONTACT CREATED SUCCESSFULLY';
        }
    CATCH (EXCEPTION E) 
    {
        MSG='ENTER LASTNAME ----> '+  E.getMessage();
    }
}
   
}