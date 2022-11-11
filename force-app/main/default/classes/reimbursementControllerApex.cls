public with sharing class reimbursementControllerApex {
    @AuraEnabled
    public static decimal getReimburseAmount(){
        list<AggregateResult> result=new list<AggregateResult>();
        result=[SELECT sum(salestrip__Amount__c)num FROM salestrip__Expense__c where salestrip__status__c='Reimbursed' WITH SECURITY_ENFORCED ];
        String str=String.valueOf(result[0].get('num'));
        decimal number1=decimal.valueOf(str);
        system.debug('String ===>' + str);
        system.debug('String ===>' + number1 );
        return number1;
    }
    
    @AuraEnabled
    public static integer getReimburse(){
        integer i=[select count() from salestrip__Expense__c where salestrip__status__c='Reimbursed' WITH SECURITY_ENFORCED ];
        system.debug('Expesne Records ======>'+ i);
        return i;
    }

}
