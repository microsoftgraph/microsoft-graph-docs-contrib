---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.users.item.sendmail.SendMailPostRequestBody sendMailPostRequestBody = new com.microsoft.graph.users.item.sendmail.SendMailPostRequestBody();
Message message = new Message();
message.setSubject("9/9/2018: concert");
ItemBody body = new ItemBody();
body.setContentType(BodyType.Html);
body.setContent("The group represents Nevada.");
message.setBody(body);
LinkedList<Recipient> toRecipients = new LinkedList<Recipient>();
Recipient recipient = new Recipient();
EmailAddress emailAddress = new EmailAddress();
emailAddress.setAddress("AlexW@contoso.com");
recipient.setEmailAddress(emailAddress);
toRecipients.add(recipient);
message.setToRecipients(toRecipients);
LinkedList<InternetMessageHeader> internetMessageHeaders = new LinkedList<InternetMessageHeader>();
InternetMessageHeader internetMessageHeader = new InternetMessageHeader();
internetMessageHeader.setName("x-custom-header-group-name");
internetMessageHeader.setValue("Nevada");
internetMessageHeaders.add(internetMessageHeader);
InternetMessageHeader internetMessageHeader1 = new InternetMessageHeader();
internetMessageHeader1.setName("x-custom-header-group-id");
internetMessageHeader1.setValue("NV001");
internetMessageHeaders.add(internetMessageHeader1);
message.setInternetMessageHeaders(internetMessageHeaders);
sendMailPostRequestBody.setMessage(message);
graphClient.me().sendMail().post(sendMailPostRequestBody);


```