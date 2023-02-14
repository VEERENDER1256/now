({
	showme : function(component, event, helper) 
    {
		var aa= component.get("v.accs");
        var evt=component.getEvent("bang");
        
        
        var action= component.get("c.main");
        action.setParams({"ab":aa});
        $A.enqueueAction(action);
        evt.setParams({"eacs":aa});
        evt.fire();
	}
})