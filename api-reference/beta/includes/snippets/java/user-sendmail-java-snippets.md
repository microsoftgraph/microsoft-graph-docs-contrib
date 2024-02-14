---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.sendmail.SendMailPostRequestBody sendMailPostRequestBody = new com.microsoft.graph.beta.users.item.sendmail.SendMailPostRequestBody();
Message message = new Message();
message.setSubject("Meet for lunch?");
ItemBody body = new ItemBody();
body.setContentType(BodyType.Text);
body.setContent("The new cafeteria is open.");
message.setBody(body);
LinkedList<Recipient> toRecipients = new LinkedList<Recipient>();
Recipient recipient = new Recipient();
EmailAddress emailAddress = new EmailAddress();
emailAddress.setAddress("samanthab@contoso.com");
recipient.setEmailAddress(emailAddress);
toRecipients.add(recipient);
message.setToRecipients(toRecipients);
LinkedList<Recipient> ccRecipients = new LinkedList<Recipient>();
Recipient recipient1 = new Recipient();
EmailAddress emailAddress1 = new EmailAddress();
emailAddress1.setAddress("danas@contoso.com");
recipient1.setEmailAddress(emailAddress1);
ccRecipients.add(recipient1);
message.setCcRecipients(ccRecipients);
sendMailPostRequestBody.setMessage(message);
sendMailPostRequestBody.setSaveToSentItems(false);
graphClient.me().sendMail().post(sendMailPostRequestBody);


```