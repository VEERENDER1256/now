({
	create : function(component, event, helper) {
        var dc= component.get("v.acc");
        
        var action=component.get("c.createacc");
        
        action.setParams({"ac":dc});
        
        $A.enqueueAction(action);
        
		
	}
})