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
                               var amountCon= response.getReturnValue();
                               var convAmount=$A.localizationService.formatCurrency(amountCon);

                               component.set("v.totalamount", convAmount);
                           });
        console.log("Enter 4");
        $A.enqueueAction(number2);

        var cmonth=component.get("c.getCurrentMonth");
        cmonth.setCallback(this, function(response) 
                           { 
                               var currentmnthrecord=response.getReturnValue();
                               component.set("v.currentMonthRecord",currentmnthrecord);
                           });
        console.log("Enter 4");
        $A.enqueueAction(cmonth);

        var lmonth=component.get("c.getCurrentLastExpenseRecord");
        lmonth.setCallback(this, function(response) 
                           { 
                            
                               var lastmonthrecord=response.getReturnValue();
                               var convertPercent=$A.localizationService.formatPercent(lastmonthrecord);
                               console.log(convertPercent);
                               if(lastmonthrecord>0){
                                  
                                  component.set("v.setBoolean","true");
                                  component.set("v.lastMonthRecord",convertPercent);

                               }else{
                                  
                                   component.set("v.setBoolean","false");
                                   component.set("v.lastMonthRecord",convertPercent);
                               }
                           });
        console.log("Enter 4");
        $A.enqueueAction(lmonth);

        var cmonthamount=component.get("c.getcurrentMonthAmount");
        cmonthamount.setCallback(this, function(response) 
                           { 
                               var currentmonthamount =  response.getReturnValue();
                               component.set("v.currentMonthAmount",currentmonthamount);
                           });
        console.log("Enter 4");
        $A.enqueueAction(cmonthamount);

        var lmonthamount=component.get("c.getlastMonthAmount");
        lmonthamount.setCallback(this, function(response) 
                           { 
                               var lastmonthamount=response.getReturnValue();
                               var convertAmountPercent=$A.localizationService.formatPercent(lastmonthamount);
                               if(lastmonthamount>0){
                                
                                component.set("v.amountBoolean","true");
                                component.set("v.lastMonthAmount",convertAmountPercent);
                                
                               }else{
                                
                                component.set("v.amountBoolean","false");
                                component.set("v.lastMonthAmount",convertAmountPercent);

                               }
                           });
        console.log("Enter 4");
        $A.enqueueAction(lmonthamount);
        


    }
    
    
    
})