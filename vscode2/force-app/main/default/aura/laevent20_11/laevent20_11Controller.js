({
	click : function(component, event, helper) 
    {
		var m=component.get("v.msg");
        var evt=component.getEvent("bangaram");
        evt.setParams({"edata":m});
        evt.fire();
       
	},
    handle:  function(component, event, helper)
    {
        
        var rd = event.getParam('edata');
        alert("this is alert");
    
}
})