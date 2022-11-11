public with sharing class expenseControllerApex {
    @AuraEnabled
    public static integer getTotalrecords(){
        integer i=[select count() from salestrip__Expense__c WITH SECURITY_ENFORCED ];
        system.debug('Total records'+ i);
        return i;
    }
    @AuraEnabled

    public static Decimal getData(){
         list<AggregateResult> expenseTotal = new list<AggregateResult>();
  
         expenseTotal = [Select sum(salestrip__Amount__c)cnt from salestrip__Expense__c WITH SECURITY_ENFORCED ];  
        
        String str = String.valueOf(expenseTotal[0].get('cnt')) ;
        Decimal dec = Decimal.valueOf(str) ;
        
        system.debug('String Value - '+str);
        system.debug('Integer Value - '+dec);
        return dec;
    }
}