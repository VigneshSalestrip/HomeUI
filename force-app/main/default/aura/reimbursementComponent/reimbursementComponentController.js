({
    doinit : function(component, event, helper) {
         var number = component.get("c.getReimburse");
        console.log("Enter 1");
        
        number.setCallback(this, function(response) 
                           {
                               component.set("v.totalreimburse", response.getReturnValue());
                           });
        console.log("Enter 2");
        $A.enqueueAction(number);
        
        var getamount=component.get("c.getReimburseAmount");
        console.log("Enter 3");
        getamount.setCallback(this, function(response){
           
                component.set("v.totalreimburseamount", response.getReturnValue());
            
        });
        $A.enqueueAction(getamount);
        console.log("Enter 4");
    }
})