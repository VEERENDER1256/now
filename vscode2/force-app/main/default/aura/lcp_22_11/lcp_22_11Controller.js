({
	handle : function(component, event, helper) 
    {
        var ff=event.getParam("eacs");
        var pp=component.get("v.acco");
        
        pp.push(ff);
        component.set("v.acco",pp);
        
       
		
	},
    initer:function(component, event, helper) 
    {
     
       
        
        var cb= [
                 {label:"Name", fieldName:"Name"       , type: 'text' },
                 {label:"Phone",fieldName:"Phone",      type: "phone"},
                 {label:"Industry",fieldName:"Industry", type: "text"}];
     component.set("v.col",cb);         
},
    clickme:function(component, event, helper) 
    {
    var tt= component.get("v.acco");
        var action= component.get("c.main");
        action.setParams({"acou":tt});
        $A.enqueueAction(action);
        component.set("v.flag",false);
}
})