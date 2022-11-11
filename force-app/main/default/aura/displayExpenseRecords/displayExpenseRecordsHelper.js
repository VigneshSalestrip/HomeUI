({
    gotoexpense : function(component) {

        var action=component.get('c.getExpense');
        action.setCallback(this,function(response){
            component.set('v.salestrip__Expense__c',response.getReturnValue());
        });
        $A.enqueueAction(action);

    }
})
