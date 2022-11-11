({
    doinit : function(component, event, helper) 
    {
        var number = component.get("c.getTotalrecords");
        console.log("Enter 1");
        
        number.setCallback(this, function(response) 
                           {
                               component.set("v.totalexpenses", response.getReturnValue());
                           });
        console.log("Enter 2");
        $A.enqueueAction(number);
    
     var number2 = component.get("c.getData");
        
        console.log("Enter 3");
        number2.setCallback(this, function(response) 
                           {
                               component.set("v.totalamount", response.getReturnValue());
                           });
        console.log("Enter 4");
        $A.enqueueAction(number2);
    }
    
    
    
})