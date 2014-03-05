global class SearchAndReplace implements Database.Batchable<sObject>{

   global String Query;
   global final String Entity;
   global final String Field;
   global final String Value;

   global SearchAndReplace(String q, String e, String f, String v){

      Query=q; Entity=e; Field=f;Value=v;
   }

   global Database.QueryLocator start(Database.BatchableContext BC) 
   {
      query= 'Select Id,name from account where account.name = \"abc\" limit 10';
      return Database.getQueryLocator(query);
   }

   global void execute(Database.BatchableContext BC, List<Account> scope){
     for(Account s : scope){
     s.name = 'abc praneet'; 
     system.debug('id---' +s.id);
     }
     update scope;
    }

   global void finish(Database.BatchableContext BC){
   }
}