public class wrapperclass {
    public list<WC> wList { get; set; }
    public list<account> selectedAccounts{get;set;}    
  
    public WrapperClass ()
          {
          wList =new list<WC>();
          for(account a:[select id,name,billingcity,phone from account limit 10]){
              
              
          wlist.add(new WC(a));
        
           }
       
      }

    
      public void ProcessSelected()
      {
     selectedAccounts=new list<account>();
     
      for(WC EA:wlist)
         {
           if(EA.isSelected==true)
           {
           selectedAccounts.add(EA.accn);
           }
            
         }
      }}