public class MyController
{
        private final Account account;
         public MyController ()
          {
              account=[select id, name, site from Account where id =:ApexPages.currentPage().getParameters().get('id')];
          }
public account  getAccount ()
{
return account;
}
public PageReference save1()
{
update account;
return new PageReference('http://www.google.com');
}
}