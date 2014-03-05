Public Class classOutbound
{
public void emailFunction()
{
Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
String[] toAddresses = new String[] {'praneet.vig@makepositive.com'};
mail.setToAddresses(toAddresses);
mail.setReplyTo('praneet.vig@makepositive.com');
mail.setSenderDisplayName('Salesforce Support');
mail.setSubject('New Case Created : ');
mail.setBccSender(false);
mail.setPlainTextBody('Your Case has been created');
Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });

}
}