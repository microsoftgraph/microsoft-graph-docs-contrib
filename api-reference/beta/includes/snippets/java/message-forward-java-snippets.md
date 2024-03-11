---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.messages.item.forward.ForwardPostRequestBody forwardPostRequestBody = new com.microsoft.graph.beta.users.item.messages.item.forward.ForwardPostRequestBody();
Message message = new Message();
message.setIsDeliveryReceiptRequested(true);
LinkedList<Recipient> toRecipients = new LinkedList<Recipient>();
Recipient recipient = new Recipient();
EmailAddress emailAddress = new EmailAddress();
emailAddress.setAddress("danas@contoso.com");
emailAddress.setName("Dana Swope");
recipient.setEmailAddress(emailAddress);
toRecipients.add(recipient);
message.setToRecipients(toRecipients);
forwardPostRequestBody.setMessage(message);
forwardPostRequestBody.setComment("Dana, just want to make sure you get this.");
graphClient.me().messages().byMessageId("{message-id}").forward().post(forwardPostRequestBody);


```