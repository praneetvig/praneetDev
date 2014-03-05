public class quoteEXT {
    public final Contact primContact {get; set;}
    public final Opportunity o {get; set;}
    public quoteEXT(ApexPages.StandardController controller) {
        this.o=(Opportunity)controller.getrecord();
        try{
            ID primContactid = [select id,contactid from opportunitycontactrole where opportunityid=:o.id and isprimary=true LIMIT 1].contactid;
            primContact = [select id,name from contact where id=:primContactid limit 1];
        }catch(QueryException qe){
            system.debug('ERROR Querying contact:'+qe.getmessage());
        }
    }

}