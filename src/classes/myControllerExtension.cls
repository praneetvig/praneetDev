public class myControllerExtension{
    private final account acct;
        public myControllerExtension(ApexPages.StandardController stdController)
        {
                        this.acct = (Account)stdController.getRecord();
    }
    
    public String getXyz()
    {
        return 'Hello ' + acct.name + ' (' + acct.id + ')';
    }
}