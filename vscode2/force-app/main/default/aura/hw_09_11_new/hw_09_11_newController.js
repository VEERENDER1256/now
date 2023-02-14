({
	callme : function(component, event, helper) 
    {
	 var p=component.get("v.num1");
     var r=0;
     var   q=0;
        while(r<=p)
        {
            q=parseInt(q)+parseInt(r);
            r++;r++;
        }
        
        
       component.set("v.res",r);
      
	}
})