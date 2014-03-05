public class compon
{
    public list<opportunity> opp{ get; set;}
    public String str{get; set;}
    list<selectoption> o{get;set;}
    public compon()
    {
        o=new list<Selectoption>();
        this.opp=[Select id, name,closeDate from opportunity limit 10];
        str=null;
     }
     
    public list<selectoption> getopplis()
    {
        for(opportunity a:opp)
        {
            o.add(new Selectoption(a.id,a.name));
        }
        return o;
    }

}