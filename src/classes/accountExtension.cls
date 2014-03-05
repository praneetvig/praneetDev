Public class accountExtension
{
/*    public account acctObj{
get{
Account acc = new Account();
if(str != null){
acc = [ select  name from Account where account.id=:str limit 1];
}
return acc;
}
set;
} */

/* public contact conObj{
get{
contact con= new contact();
if(str != null){
con = [ select name from contact where contact.accountid=:str];
}
return con;
}
set;
} */
    public string str{get; set;}

    public accountExtension(ApexPages.StandardController controller) 
    {
    }
         public List<selectOption> getAcct()
     {
     List<SelectOption> acctList = new List<selectOption>();
     for (Account acc: [SELECT Id, Name FROM Account Limit 10])
     {
         acctList.add(new selectOption(acc.id, acc.Name));
     }
    return acctList;         
}
public list<contact> conList = new list<contact>();
public list<contact> contactname()
{
 this.conList=[ select name from contact where contact.accountid=:str];
return conList;
}
}