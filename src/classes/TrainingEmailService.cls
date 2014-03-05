global class TrainingEmailService implements Messaging.InboundEmailHandler 
{
    global Messaging.InboundEmailResult handleInboundEmail(Messaging.inboundEmail email, Messaging.InboundEnvelope env)
        {
            Messaging.InboundEmailResult result = new Messaging.InboundEmailResult();
            Contact vCon = [Select Id, Name, Email From Contact Where Email = :email.fromAddress];
            vcon= new contact();
            vcon.LastName = email.subject;
            insert vcon;
     
            return result;
        }

}