({
	callme : function(component, event, helper)
    {
		var a=parseInt(component.get("v.add1"));
        var b=parseInt(component.get("v.add2"));
        var c=parseInt(component.get("v.add3"));
        
         
       var action = component.get("c.addition4") ;
        
        action.setParams({"num1":a,"num2":b,"num3":c});
        action.setCallback(this,function(response){
                                                    var st=response.getState();
                                                     if(st=='SUCCESS')
                                                     {
                                                         var rr=response.getReturnValue();
                                                          component.set("v.res",rr);
                                                     }
                                                   
            
        });
            
            
        
                           
                           
  
        
        $A.enqueueAction(action);
        
	}
})