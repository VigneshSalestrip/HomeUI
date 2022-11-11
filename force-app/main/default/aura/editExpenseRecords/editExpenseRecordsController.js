({
    
    //doInit function to fetch the data
	doInit : function(component, event, helper)
    {
        component.set("v.number",3);
        component.set("v.editData",false);
        var action=component.get("c.getExpenseList");
        action.setCallback(this,function(response){
            var state=response.getState();           
            if(state==='SUCCESS')            {
                
                var result=response.getReturnValue();
                component.set("v.Expense",result);
            }
            else
            {
                console.log('Some Error occurred during fetching the data');
            }
           
        });
        $A.enqueueAction(action);
  
 },
    
    //dataEditAction function to edit the data
    
    dataEditAction:function(component,event,helper)
    {
        component.set("v.editData",true);
    },
    
    
     //dataSaveAction function to Save the data
    dataSaveAction:function(component,event,helper)
    {
        
        component.set("v.editData",false);
        var action=component.get("c.updateExpRecords");
        action.setParams({
            accdata:component.get("v.Expense")
           
        });
          action.setCallback(this,function(response){
            var state=response.getState();
          
            if(state==='SUCCESS')
            {               
                var result=response.getReturnValue();
                component.set("v.Expense",result);
                
                var toastEvent = $A.get("e.force:showToast");
                toastEvent.setParams({
                    "title": "Success!",
                    "type":'success',
                    "message": "The record has been updated successfully."
                });
                toastEvent.fire();
                
            }
            else
            {
                console.log('Some Error occurred during fetching the data');
            }
           
        });
        $A.enqueueAction(action);
    },
    
    
    //dataCancelAction function to Cancel the data
    dataCancelAction:function(component,event,helper)
    {
        component.set("v.editData",false);
    }
    
})