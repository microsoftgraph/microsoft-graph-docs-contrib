---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.users.item.messages.item.forward.ForwardPostRequestBody forwardPostRequestBody = new com.microsoft.graph.users.item.messages.item.forward.ForwardPostRequestBody();
forwardPostRequestBody.setComment("comment-value");
LinkedList<Recipient> toRecipients = new LinkedList<Recipient>();
Recipient recipient = new Recipient();
EmailAddress emailAddress = new EmailAddress();
emailAddress.setName("name-value");
emailAddress.setAddress("address-value");
recipient.setEmailAddress(emailAddress);
toRecipients.add(recipient);
forwardPostRequestBody.setToRecipients(toRecipients);
graphClient.me().messages().byMessageId("{message-id}").forward().post(forwardPostRequestBody);


```