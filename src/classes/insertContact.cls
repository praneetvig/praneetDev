Public class insertContact
{
public void testFunction()
{
     
        account a = new account();
        a.name = 'TestName1';
        insert a;
        a = [Select name from account where account.id=:a.id];
        
            
}
}