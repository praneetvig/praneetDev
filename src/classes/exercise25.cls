Public class exercise25
{
                public account acct;
                public contact con;
    
public exercise25()
        {
                acct = new account();
                con= new contact();
        }
public Account getAcct()
        {
                return acct;
        }
public Contact getCon()
        {
                return con;
        }

public PageReference save()
        {
                insert acct;
                insert con;
                return new PageReference('http://www.google.com');
        }
}