(
    {
	subme : function(component, event, helper) 
        {
		component.set('v.Name','sharukh khan');
        component.set('v.phone',8888888888);    
	},
       clearme : function(component, event, helper) 
        {
		component.set('v.Name',null);
            component.set('v.phone',null); 
	} 
}
)