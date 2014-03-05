Public class accountExtension1
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

    public accountExtension1() 
    {
      conList = new list<contact>();
      oppList = new list<opportunity>();
    }
         public List<selectOption> getAcct()
     {
     List<SelectOption> acctList = new List<selectOption>();
     for (Account acc: [SELECT Name,id FROM Account Limit 10])
     {
         acctList.add(new selectOption(acc.Id, acc.Name));
     }
    return acctList;         
}
public list<contact> conList {get; set;}
public list<opportunity> oppList {get; set;}

public void contactname()
{
 this.conList=[ select name from contact where contact.accountid=:str];
 this.oppList=[ select name from opportunity where opportunity.accountid=:str];

}
}