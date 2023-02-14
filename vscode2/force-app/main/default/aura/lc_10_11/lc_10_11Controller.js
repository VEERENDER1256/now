({
	callme : function(component, event, helper)  
    {
        var p =parseInt(component.find("ak").get("v.value"));
        
        var clk=event.getSource();
        var myid=clk.getLocalId();
        var count=0;
        var r=0;
        if (myid=="pk")
        {
        while(count<=p)
        {
            r=count+r;
            count++;count++;
            
        }}
        component.set("v.res",r)
        
	}
})