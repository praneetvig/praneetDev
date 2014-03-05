@isTest
Public class test1
{
    static testmethod void testMethodName() 
        {
        insertContact ic = new insertContact();
        ic.testFunction();
        account a = new account();
        a.name = 'TestName';
        insert a;
        a = [Select name from account where account.id=:a.id];
        system.assertNotEquals('TestName',a.name);
            
        }
        }