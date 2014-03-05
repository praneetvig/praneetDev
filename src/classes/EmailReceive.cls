global class EmailReceive implements Messaging.InboundEmailHandler {
    global Messaging.InboundEmailResult handleInboundEmail(Messaging.InboundEmail email,Messaging.Inboundenvelope envelope) 
    {
        Account account;
        Messaging.InboundEmailResult result = new Messaging.InboundEmailResult();
        try
         {
            if ([select count() from Account where Name = :email.subject] == 0)
             {
                 account = new Account();
                 account.Name = email.subject;
                 insert account;
             } 
           else
            {
                 account = [select Id from Account where Name = :email.subject];
            }
          
          
         for (Messaging.Inboundemail.TextAttachment tAttachment : email.textAttachments)
          {
                Attachment attachment = new Attachment();
    
                attachment.Name = tAttachment.fileName;
                attachment.Body = Blob.valueOf(tAttachment.body);
                attachment.ParentId = account.Id;
                insert attachment;
          }
          
          
            
       Note note = new Note();
    
       note.Title = email.fromName + ' (' + DateTime.now() + ')';
       note.Body = email.plainTextBody;
       note.ParentId = account.Id;
       insert note;
   
       result.success = true;
     }//..end try
     
      catch (Exception e)
       {
        result.success = false;
        result.message = 'Oops, I failed.';
      }
      
      return result;
    }
  }