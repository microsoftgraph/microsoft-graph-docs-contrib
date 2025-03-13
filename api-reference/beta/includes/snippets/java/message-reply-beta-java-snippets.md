---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.messages.item.reply.ReplyPostRequestBody replyPostRequestBody = new com.microsoft.graph.beta.users.item.messages.item.reply.ReplyPostRequestBody();
Message message = new Message();
LinkedList<Recipient> toRecipients = new LinkedList<Recipient>();
Recipient recipient = new Recipient();
EmailAddress emailAddress = new EmailAddress();
emailAddress.setAddress("samanthab@contoso.com");
emailAddress.setName("Samantha Booth");
recipient.setEmailAddress(emailAddress);
toRecipients.add(recipient);
Recipient recipient1 = new Recipient();
EmailAddress emailAddress1 = new EmailAddress();
emailAddress1.setAddress("randiw@contoso.com");
emailAddress1.setName("Randi Welch");
recipient1.setEmailAddress(emailAddress1);
toRecipients.add(recipient1);
message.setToRecipients(toRecipients);
replyPostRequestBody.setMessage(message);
replyPostRequestBody.setComment("Samantha, Randi, would you name the group please?");
graphClient.me().messages().byMessageId("{message-id}").reply().post(replyPostRequestBody);


```