public with sharing class reimbursementControllerApex {
    public static decimal currentMonthcount;
    public static decimal currentMonthRecords;
    public static decimal lastMonthRecords;
    public static decimal result;
    public static decimal resultround;
    public static decimal currentMonthRecordAmount;
    public static decimal result2;
    public static decimal resultround2;
    public static decimal nulvalue1;
    public static decimal nulvalue2;
    public static decimal nulvalue3;

  /*
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
    */
    @AuraEnabled
    public static decimal getCurrentMonth(){
        
        decimal currentMonth=[SELECT count() FROM salestrip__Expense__c where salestrip__Date__c  = THIS_MONTH and salestrip__Status__c='Reimbursed'];
        //currentMonthRecords=currentMonth;
        if(currentMonth != null){
           
            currentMonthcount=currentMonth;
        }else{
            currentMonth=0;
             currentMonthcount=currentMonth;
            
        }
        system.debug('THIS Month Records ===>'+ currentMonth);
        return currentMonthcount;
    }
    @AuraEnabled
    public static decimal getCurrentLastExpenseRecord(){
        decimal currMonth=[SELECT count() FROM salestrip__Expense__c where salestrip__Date__c  = THIS_MONTH and salestrip__Status__c='Reimbursed'];
        decimal lastRec=[select count() from salestrip__Expense__c where salestrip__Date__c =LAST_MONTH and salestrip__Status__c='Reimbursed'];
        lastMonthRecords=lastRec;
        currentMonthRecords=currMonth;
         if(currMonth !=null){
            
            currentMonthRecords=currMonth;

        }else{
            currMonth=0;
            currentMonthRecords=currMonth;

        }
        
        if(lastRec !=null){
          
            lastMonthRecords=lastRec;
        }else{
          
            lastRec=0;
             
            lastMonthRecords=lastRec;
           
        }
        if(lastMonthRecords==0){
            result=(currentMonthRecords-lastMonthRecords)/currentMonthRecords;
            resultround=result.setScale(2);
            system.debug(resultround); 
            
        }else if(currentMonthRecords==0){
            result=(currentMonthRecords-lastMonthRecords)/lastMonthRecords;
            resultround=result.setScale(2);
            system.debug(resultround);                 
        }else if(lastMonthRecords==0 && currentMonthRecords==0){
            result=0;
            resultround=result;      
        }else{
            result=(currentMonthRecords-lastMonthRecords)/lastMonthRecords;
            resultround=result.setScale(2);
            system.debug(resultround); 
        }
        return resultround;
    }

    @AuraEnabled
    public static decimal getcurrentMonthAmount(){
        List<AggregateResult> currentMonthAmount=[SELECT SUM(salestrip__Amount__c) doc  FROM salestrip__Expense__c where salestrip__Date__c  = THIS_MONTH and salestrip__Status__c='Reimbursed'];
        system.debug('THIS Month Records ===>'+ currentMonthAmount);
        String str1 = String.valueOf(currentMonthAmount[0].get('doc')) ;
        if(str1 !=null){
            nulvalue1=Decimal.valueOf(str1) ;
        }else{
            nulvalue1=0;
        }
        //currentMonthRecordAmount=dec2;
        return nulvalue1;
    }

    @AuraEnabled
    public static decimal getlastMonthAmount(){ 
        List<AggregateResult> currMonthAmount=[SELECT SUM(salestrip__Amount__c) conram  FROM salestrip__Expense__c where salestrip__Date__c  = THIS_MONTH and salestrip__Status__c='Reimbursed'];
        List<AggregateResult> lastMonthAmount=[SELECT SUM(salestrip__Amount__c) amt FROM salestrip__Expense__c where salestrip__Date__c  = LAST_MONTH and salestrip__Status__c='Reimbursed' ];
        system.debug('Last Month Records ===>'+ lastMonthAmount);
        String str2 = String.valueOf(currMonthAmount[0].get('conram')) ;
        
        if(str2 !=null){
            nulvalue2=Decimal.valueOf(str2) ;
        }else{
            nulvalue2=0;

        }
        currentMonthRecordAmount=nulvalue2;
        String str3 = String.valueOf(lastMonthAmount[0].get('amt')) ;
        if(str3 != null){
            nulvalue3=Decimal.valueOf(str3);
        }else{
            nulvalue3=0;
        }
        if(nulvalue3==0){
             result2=(currentMonthRecordAmount-nulvalue3)/currentMonthRecordAmount;
            resultround2=result2.setScale(2);
        }else if(currentMonthRecordAmount==0){
             result2=(currentMonthRecordAmount-nulvalue3)/nulvalue3;
            resultround2=result2.setScale(2);
        }else if(nulvalue3==0 && currentMonthRecordAmount==0){
             result2=0;
            resultround2=result2;
        }else{
            result2=(currentMonthRecordAmount-nulvalue3)/nulvalue3;
            resultround2=result2.setScale(2);
            system.debug(result2);
            system.debug(resultround2); 
        }
        return resultround2;  
    }

}