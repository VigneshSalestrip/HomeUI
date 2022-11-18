({
    draftitem: function(component, event, helper) {
        var action= component.get("c.getdraftlistViews");
        action.setCallback(this,function(response){
            var state = response.getState();
             console.log("Enter 1");
            if (state === "SUCCESS") {
            var listviews = response.getReturnValue();
                console.log(listviews);
            }
            
            var navService = component.find("navService");
        console.log("Entered 3");
          
          
           
        var pageReference = {
            type: 'standard__objectPage',
            attributes: {
                objectApiName:'salestrip__Expense__c',
                actionName: 'list'
            },
            state:{
                
                filterName:listviews
            }
           
        };
            console.log("Entered 4");
        navService.navigate(pageReference);
        console.log("Entered 5");
            
            
        })
        
        console.log("Enter 6");
       $A.enqueueAction(action);
    },

	pendingitem: function(component, event, helper) {
        var action= component.get("c.getpendinglistViews");
        action.setCallback(this,function(response){
            var state = response.getState();
             console.log("Enter 1");
            if (state === "SUCCESS") {
            var listviews = response.getReturnValue();
                console.log(listviews);
            }
            
            var navService = component.find("navService");
        console.log("Entered 3");
          
          
        var pageReference = {
            type: 'standard__objectPage',
            attributes: {
                objectApiName:'salestrip__Expense__c',
                actionName: 'list'
            },
            state:{
                
                filterName:listviews
            }
           
        };
            console.log("Entered 4");
        navService.navigate(pageReference);
        console.log("Entered 5");
            
            
        })
        
        console.log("Enter 6");
       $A.enqueueAction(action);
    },

	reportdraft: function(component, event, helper) {
        var action= component.get("c.getexpenseReportlistViews");
        action.setCallback(this,function(response){
            var state = response.getState();
             console.log("Enter 1");
            if (state === "SUCCESS") {
            var listviews = response.getReturnValue();
                console.log(listviews);
            }
            
            var navService = component.find("navService");
        console.log("Entered 3");
          
          
        var pageReference = {
            type: 'standard__objectPage',
            attributes: {
                objectApiName:'salestrip__ExpenseReport__c',
                actionName: 'list'
            },
            state:{
                
                filterName:listviews
            }
           
        };
            console.log("Entered 4");
        navService.navigate(pageReference);
        console.log("Entered 5");
            
            
        })
        
        console.log("Enter 6");
       $A.enqueueAction(action);
    },
	reportpending: function(component, event, helper) {
        var action= component.get("c.getexpenseReportpendinglistViews");
        action.setCallback(this,function(response){
            var state = response.getState();
             console.log("Enter 1");
            if (state === "SUCCESS") {
            var listviews = response.getReturnValue();
                console.log(listviews);
            }
            
            var navService = component.find("navService");
        console.log("Entered 3");
          
          
            
        var pageReference = {
            type: 'standard__objectPage',
            attributes: {
                objectApiName:'salestrip__ExpenseReport__c',
                actionName: 'list'
            },
            state:{
                
                filterName:listviews
            }
           
        };
            console.log("Entered 4");
        navService.navigate(pageReference);
        console.log("Entered 5");
            
            
        })
        
        console.log("Enter 6");
       $A.enqueueAction(action);
    },
	pendingreimbursement: function(component, event, helper) {
        var action= component.get("c.getexpensependingReimburselistViews");
        action.setCallback(this,function(response){
            var state = response.getState();
             console.log("Enter 1");
            if (state === "SUCCESS") {
            var listviews = response.getReturnValue();
                console.log(listviews);
            }
            
            var navService = component.find("navService");
        console.log("Entered 3");
          
          
          
        var pageReference = {
            type: 'standard__objectPage',
            attributes: {
                objectApiName:'salestrip__Expense__c',
                actionName: 'list'
            },
            state:{
                
                filterName:listviews
            }
           
        };
            console.log("Entered 4");
        navService.navigate(pageReference);
        console.log("Entered 5");
            
            
        })
        
        console.log("Enter 6");
       $A.enqueueAction(action);
    },

	reimburseditem: function(component, event, helper) {
        var action= component.get("c.getexpenseReimbursedlistViews");
        action.setCallback(this,function(response){
            var state = response.getState();
             console.log("Enter 1");
            if (state === "SUCCESS") {
            var listviews = response.getReturnValue();
                console.log(listviews);
            }
            
            var navService = component.find("navService");
        console.log("Entered 3");
          
          
     
        var pageReference = {
            type: 'standard__objectPage',
            attributes: {
                objectApiName:'salestrip__Expense__c',
                actionName: 'list'
            },
            state:{
                
                filterName:listviews
            }
           
        };
            console.log("Entered 4");
        navService.navigate(pageReference);
        console.log("Entered 5");
            
            
        })
        
        console.log("Enter 6");
       $A.enqueueAction(action);
    },
	receiptitem: function(component, event, helper) {
        var action= component.get("c.getReceiptAttachedlistViews");
        action.setCallback(this,function(response){
            var state = response.getState();
             console.log("Enter 1");
            if (state === "SUCCESS") {
            var listviews = response.getReturnValue();
                console.log(listviews);
            }
            
            var navService = component.find("navService");
        console.log("Entered 3");
          
       
        var pageReference = {
            type: 'standard__objectPage',
            attributes: {
                objectApiName:'salestrip__Expense__c',
                actionName: 'list'
            },
            state:{
                
                filterName:listviews
            }
           
        };
            console.log("Entered 4");
        navService.navigate(pageReference);
        console.log("Entered 5");
            
            
        })
        
        console.log("Enter 6");
       $A.enqueueAction(action);
    },
	cardunmapped: function(component, event, helper) {
        var action= component.get("c.getCardUnmappedlistViews");
        action.setCallback(this,function(response){
            var state = response.getState();
             console.log("Enter 1");
            if (state === "SUCCESS") {
            var listviews = response.getReturnValue();
                console.log(listviews);
            }
            
            var navService = component.find("navService");
        console.log("Entered 3");
        var pageReference = {
            type: 'standard__objectPage',
            attributes: {
                objectApiName:'salestrip__Transaction__c',
                actionName: 'list'
            },
            state:{
                
                filterName:listviews
            }
           
        };
            console.log("Entered 4");
        navService.navigate(pageReference);
        console.log("Entered 5");
            
            
        })
        
        console.log("Enter 6");
       $A.enqueueAction(action);
    } ,
	
	bulkexpense: function(component, event, helper) {        
         
		 var navService = component.find("navService");
       
         var pageReference = {
            type: 'standard__navItemPage',
            attributes: {
                apiName:'salestrip__BulkApproval'
            }
           
		   };

           navService.navigate(pageReference);
    },

      
    
	
	reviewmy: function(component, event, helper) {
		var navService = component.find("navService");
	   var pageReference = {
		type: 'standard__navItemPage',
		attributes: {
			apiName:'salestrip__ReviewMyExpenses'
		}
	   
	   };

	   navService.navigate(pageReference);
    },

	creditImport: function(component, event, helper) {
		var navService = component.find("navService"); 
	 var pageReference = {
		type: 'standard__navItemPage',
		attributes: {
			apiName:'salestrip__ExpenseImport'
		}
	   
	   };

	   navService.navigate(pageReference);
	},

    //Update Notifications badge
    doinit: function(component, event, helper){

        var action1=component.get("c.getdraft");
        console.log("Enter doinit");
        action1.setCallback(this,function(response){
            component.set("v.draft",response.getReturnValue());

        });
        $A.enqueueAction(action1);

        var action1=component.get("c.getpendingappr");
        console.log("Enter doinit");
        action1.setCallback(this,function(response){
            component.set("v.pendingapp",response.getReturnValue());

        });
        $A.enqueueAction(action1);

        var action1=component.get("c.getexprdraft");
        console.log("Enter doinit");
        action1.setCallback(this,function(response){
            component.set("v.exprdraft",response.getReturnValue());
            
        });
        $A.enqueueAction(action1);

        var action1=component.get("c.getexprpendingapp");
        console.log("Enter doinit");
        action1.setCallback(this,function(response){
            component.set("v.exprpendingapp",response.getReturnValue());

        });
        $A.enqueueAction(action1);

        var action1=component.get("c.getpendingreim");
        console.log("Enter doinit");
        action1.setCallback(this,function(response){
            component.set("v.pendingreim",response.getReturnValue());

        });
        $A.enqueueAction(action1);



    }
})
