({
	sendme : function(component, event, helper) 
    {
        var a = component.get("v.em");
        var b = component.get("v.sub");
        var c = component.get("v.body");
        
        var action = component.get("c.add");
        
        action.setParams({"h":a,"g":b,"f":c});
        
        $A.enqueueAction(action);
		
	}
})