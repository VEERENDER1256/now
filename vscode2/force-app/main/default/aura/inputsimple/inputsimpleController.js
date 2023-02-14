({
clickme : function(component, event, helper) 
    {
		var a=component.find("de").get("v.value");
        
        component.set("v.dispaly",a);
	}
})