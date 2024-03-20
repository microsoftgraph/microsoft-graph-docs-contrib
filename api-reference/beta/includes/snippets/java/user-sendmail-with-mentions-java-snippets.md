---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.sendmail.SendMailPostRequestBody sendMailPostRequestBody = new com.microsoft.graph.beta.users.item.sendmail.SendMailPostRequestBody();
Message message = new Message();
message.setSubject("Project kickoff");
LinkedList<Recipient> toRecipients = new LinkedList<Recipient>();
Recipient recipient = new Recipient();
EmailAddress emailAddress = new EmailAddress();
emailAddress.setName("Samantha Booth");
emailAddress.setAddress("samanthab@contoso.com");
recipient.setEmailAddress(emailAddress);
toRecipients.add(recipient);
message.setToRecipients(toRecipients);
LinkedList<Mention> mentions = new LinkedList<Mention>();
Mention mention = new Mention();
EmailAddress mentioned = new EmailAddress();
mentioned.setName("Dana Swope");
mentioned.setAddress("danas@contoso.com");
mention.setMentioned(mentioned);
mentions.add(mention);
message.setMentions(mentions);
sendMailPostRequestBody.setMessage(message);
graphClient.me().sendMail().post(sendMailPostRequestBody);


```