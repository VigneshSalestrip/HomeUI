public with sharing class navigationinboxDashController {
    @AuraEnabled
    public static id getpendinglistViews(){
        try {
            id listviews =[SELECT Id FROM ListView WHERE SobjectType='salestrip__Expense__c'and name ='Pending Approval' limit 1].id;
            system.debug('List View ====>'+ listviews);
            return listviews;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
    //list
    @AuraEnabled
    public static id getdraftlistViews(){
        try {
            id listviews =[SELECT Id FROM ListView WHERE SobjectType='salestrip__Expense__c'and name ='Draft' limit 1].id;
            system.debug('List View ====>'+ listviews);
            return listviews;
            
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
    @AuraEnabled
    public static id getexpenseReportlistViews(){
        try {
            id listviews =[SELECT Id FROM ListView WHERE SobjectType='salestrip__ExpenseReport__c'and name ='Draft' WITH SECURITY_ENFORCED].id;
            system.debug('List View ====>'+ listviews);
            return listviews;
            
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
    @AuraEnabled
    public static id getexpenseReportpendinglistViews(){
        try {
            id listviews =[SELECT Id FROM ListView WHERE SobjectType='salestrip__ExpenseReport__c'and name ='Pending Approval' WITH SECURITY_ENFORCED].id;
            system.debug('List View ====>'+ listviews);
            return listviews;
            
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
    @AuraEnabled
    public static id getexpensependingReimburselistViews(){
        try {
            id listviews =[SELECT Id FROM ListView WHERE SobjectType='salestrip__Expense__c'and name ='Pending Reimbursement' WITH SECURITY_ENFORCED ].id;
            system.debug('List View ====>'+ listviews);
            return listviews;
            
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
    @AuraEnabled
    public static id getexpenseReimbursedlistViews(){
        try {
            id listviews =[SELECT Id FROM ListView WHERE SobjectType='salestrip__Expense__c'and name ='Reimbursed' WITH SECURITY_ENFORCED].id;
            system.debug('List View ====>'+ listviews);
            return listviews;
            
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
    @AuraEnabled
    public static id getReceiptAttachedlistViews(){
        try {
            id listviews =[SELECT Id FROM ListView WHERE SobjectType='salestrip__Expense__c'and name ='Receipt UnAttached' WITH SECURITY_ENFORCED].id;
            system.debug('List View ====>'+ listviews);
            return listviews;
            
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
    @AuraEnabled
    public static id getCardUnmappedlistViews(){
        try {
            id listviews =[SELECT Id FROM ListView WHERE SobjectType='salestrip__Transaction__c'and name ='Card UnMapped Transactions' WITH SECURITY_ENFORCED].id;
            system.debug('List View ====>'+ listviews);
            return listviews;
            
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    // Badge Only
    @AuraEnabled
    public static integer getdraft(){
        try {
            return [select count() from salestrip__Expense__c where salestrip__Status__c='Draft'];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    @AuraEnabled
    public static integer getpendingappr(){
        try {
            return [select count() from salestrip__Expense__c where salestrip__Status__c='Pending Approval'];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    @AuraEnabled
    public static integer getexprdraft(){
        try {
            return [select count() from salestrip__ExpenseReport__c where salestrip__Status__c='Draft'];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    @AuraEnabled
    public static integer getexprpendingapp(){
        try {
            return [select count() from salestrip__ExpenseReport__c where salestrip__Status__c='Pending Approval'];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    @AuraEnabled
    public static integer getpendingreim(){
        try {
            return [select count() from salestrip__Expense__c where salestrip__Status__c='Pending Reimbursement'];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
    
}
