public class xml_serialize_0101 
{
    public string xmlstring {get;set;}
    
    public xml_serialize_0101()
    {
        dom.Document doc= new dom.Document();
        dom.XmlNode root= doc.createRootElement('Accounts',null,null);

        
        list<account> acc= [select name, (select lastname from contacts where lastname !=null) from account  limit 1];
        for (account EA : acc)
        {
             dom.XmlNode branch= root.addchildelement('Account',null,null);
             branch.setAttribute('name',EA.name);
             dom.XmlNode root2= branch.addchildelement('contacts',null,null);
            
            for(contact EC: EA.contacts)
            {
               dom.XmlNode branch2= root2.addchildelement('contact',null,null);
                branch2.setAttribute('last name', EC.lastname);
             }
            
        }
        
         xmlstring = doc.toXmlString();
    }
    
   
}