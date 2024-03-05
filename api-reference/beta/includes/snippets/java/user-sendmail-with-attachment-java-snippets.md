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
emailAddress.setAddress("meganb@contoso.com");
recipient.setEmailAddress(emailAddress);
toRecipients.add(recipient);
message.setToRecipients(toRecipients);
LinkedList<Attachment> attachments = new LinkedList<Attachment>();
FileAttachment attachment = new FileAttachment();
attachment.setOdataType("#microsoft.graph.fileAttachment");
attachment.setName("attachment.txt");
attachment.setContentType("text/plain");
byte[] contentBytes = Base64.getDecoder().decode("SGVsbG8gV29ybGQh");
attachment.setContentBytes(contentBytes);
attachments.add(attachment);
message.setAttachments(attachments);
sendMailPostRequestBody.setMessage(message);
graphClient.me().sendMail().post(sendMailPostRequestBody);


```