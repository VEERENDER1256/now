public class json2345 
{
    public void bringcon()
    {
        system.JSONGenerator js= JSON.createGenerator(true);
        js.writeStartObject();
        list<account> ac= [select phone, name,id from account where phone <> null limit:1];
        for(account ea: ac)
        {
            js.writeStringField('phone',ea.phone);
            
        }
        
        
        js.writeEndObject();
        string result =js.getAsString();
        system.debug(RESULT);
     
    }

}