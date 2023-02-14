public class json_parser12 
{
    public string jp1 {GET;SET;} 
    
    
public void parse()
   {
       jp1 ='{"name":"veerender","phone":"987678","fax":"090909"}';
    system.JSONParser js=  JSON.createParser (jp1);
       while(js.nextToken()!= null)
       {
           if(js.getText()=='NAME')
           {
               
             JS.nextToken();
               system.debug(js.getText());
           }
       }
}
}