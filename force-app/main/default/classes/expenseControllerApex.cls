public with sharing class expenseControllerApex {
    public static decimal currentMonthRecords;
    public static decimal lastMonthRecords;
    public static decimal result;
    public static decimal resultround;
    public static decimal currentMonthRecordAmount;
    public static decimal result2;
    public static decimal resultround2;
    public static decimal nulvalue1;
    



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

    //Comparison 
    @AuraEnabled
    public static decimal getCurrentMonth(){
        
        decimal currentMonth=[SELECT count() FROM salestrip__Expense__c where createdDate = THIS_MONTH ];
        //currentMonthRecords=currentMonth;
        system.debug('THIS Month Records ===>'+ currentMonth);
        return currentMonth;
    }
    @AuraEnabled
    public static decimal getCurrentLastExpenseRecord(){
        decimal currMonth=[SELECT count() FROM salestrip__Expense__c where createdDate = THIS_MONTH ];
        decimal lastRec=[select count() from salestrip__Expense__c where createdDate=LAST_MONTH];
        currentMonthRecords=currMonth;
        lastMonthRecords=lastRec;
        result=(currentMonthRecords-lastMonthRecords)/currentMonthRecords;
        resultround=result.setScale(2);
        system.debug(resultround);
        return resultround;
    }

    @AuraEnabled
    public static decimal getcurrentMonthAmount(){
        List<AggregateResult> currentMonthAmount=[SELECT SUM(salestrip__Amount__c) doc  FROM salestrip__Expense__c where createdDate = THIS_MONTH ];
        system.debug('THIS Month Records ===>'+ currentMonthAmount);
        String str1 = String.valueOf(currentMonthAmount[0].get('doc')) ;
        Decimal dec2 = Decimal.valueOf(str1) ;
        //currentMonthRecordAmount=dec2;
        return dec2;
    }

    @AuraEnabled
    public static decimal getlastMonthAmount(){ 
        List<AggregateResult> currMonthAmount=[SELECT SUM(salestrip__Amount__c) coram  FROM salestrip__Expense__c where createdDate = THIS_MONTH ];
        List<AggregateResult> lastMonthAmount=[SELECT SUM(salestrip__Amount__c) amt FROM salestrip__Expense__c where createdDate = LAST_MONTH  ];
        system.debug('Last Month Records ===>'+ lastMonthAmount);
        String str2 = String.valueOf(currMonthAmount[0].get('coram')) ;
        Decimal dec3 = Decimal.valueOf(str2) ;
        String str3 = String.valueOf(lastMonthAmount[0].get('amt')) ;
        if(str3 !=null){
           
            nulvalue1 = Decimal.valueOf(str3) ;
           system.debug(nulvalue1);
       }else{
           
           nulvalue1=0;
           system.debug(nulvalue1);
            
       }
        currentMonthRecordAmount=dec3;
        result2=(currentMonthRecordAmount-nulvalue1)/currentMonthRecordAmount;
        resultround2=result2.setScale(2);
        system.debug(result2);
        system.debug(resultround2);
        return resultround2;  
    }
}