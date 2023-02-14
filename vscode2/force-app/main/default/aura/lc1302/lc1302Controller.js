({
	clickme : function(component, event, helper) 
    {
        var a=parseInt(component.find("te").get("v.value"));
        var b=parseInt(component.find("tb").get("v.value"));
		var cd=a+b;
      
        
        var evt=component.getEvent("veerender");
        evt.setParams({'veeru':cd}); 
         var ab= event.getParam("veeru");
       
        evt.fire();
        
	}
})