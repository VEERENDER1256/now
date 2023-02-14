public class class1711 
{
    public list<contact> c    {get;set;}
    public string st          {get;set;}
    public contact a          {get;set;}
    public string msg         {get;set;}
    public list<case> cs      {get;set;}
    
public class1711(ApexPages.standardcontroller abc)
{
    a=(contact) abc.getRecord();
}
    public void cse()
    {
        cs=[select subject from case where contactid=:a.Id];
    }
    public void upd()
    {
        if(a.FirstName==null || a.FirstName=='')
        {
            msg='not able to update';
        }
        
        
        else
        {
            update a;
            msg='updated successfully';
        }
    }
    public void con()
    {
           string stst= '%'+st+'%';
        
            c=[select lastname,firstname,phone from contact where firstname like : stst or  lastname like : stst ];

    }
}