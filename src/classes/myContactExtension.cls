public class myContactExtension
{
    private final contact  cont;
        public List<opportunity> oppList;
                    public myContactExtension(ApexPages.StandardController stdController)
   {
                 this.cont= (contact)stdController.getRecord();
   }
                        public List<opportunity> GetOppList()
    {
        contact contactObj = [Select id,account.id from contact where id = :cont.id];
        if (contactObj==Null)
            return null;
        
        oppList=[Select id,name,StageName,Probability from Opportunity where account.id = :contactObj.account.id];
        return oppList;
    }
}