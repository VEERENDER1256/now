({
	showme : function(component, event, helper) 
    {
		var action= component.get("c.acco");
        
        action.setCallback(this,function(response){
            
            var state= response.getState();
            if(state=='SUCCESS')
            {
                var st= response.getReturnValue();
                component.set("v.acc",st);
            }
        })
        $A.enqueueAction(action);
	}
})