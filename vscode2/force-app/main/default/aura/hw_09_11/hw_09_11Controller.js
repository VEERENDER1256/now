({
	callme : function(component, event, helper) 
    {
	 var p=component.get("v.num1");
     var q=component.get("v.num2");
     var r=component.get("v.res");
        
        r=parsint(p)+parsint(q);
        component.set("v.res",r);
      
	}
})