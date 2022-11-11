public with sharing class sampleTestExpenseController {
    @AuraEnabled
    public static list<salestrip__Expense__c> getExpense(){
        try {

            return [SELECT Id, Name, salestrip__Status__c, salestrip__Type__c,salestrip__PaymentMethod__r.name ,Owner.name FROM salestrip__Expense__c  where salestrip__Status__c='Draft'];
            
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    @AuraEnabled
    public static List<salestrip__Expense__c> getExpenseList(){
        List<salestrip__Expense__c> exprec = [SELECT Id, Name, salestrip__Status__c, salestrip__Type__c,salestrip__PaymentMethod__r.name ,Owner.name FROM salestrip__Expense__c  where salestrip__Status__c='Draft'];
        return exprec;
    }

    @AuraEnabled
    public static List<salestrip__Expense__c> updateExpRecords(list<salestrip__Expense__c> expdata){
       try{
        update expdata;
    
       }
       catch(Exception e){
        system.debug(e.getMessage());
       }
       return expdata;
    }

}
