({
	click : function(component, event, helper)
    {
        
        
        var ce= parseInt(event.getParam('veeru'));
        
        alert("this is child"+ce);
        component.set("v.valuer",ce);
		
	}
})