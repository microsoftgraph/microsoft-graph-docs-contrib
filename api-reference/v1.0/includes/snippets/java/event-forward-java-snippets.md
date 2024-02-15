---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.users.item.events.item.forward.ForwardPostRequestBody forwardPostRequestBody = new com.microsoft.graph.users.item.events.item.forward.ForwardPostRequestBody();
LinkedList<Recipient> toRecipients = new LinkedList<Recipient>();
Recipient recipient = new Recipient();
EmailAddress emailAddress = new EmailAddress();
emailAddress.setAddress("danas@contoso.com");
emailAddress.setName("Dana Swope");
recipient.setEmailAddress(emailAddress);
toRecipients.add(recipient);
forwardPostRequestBody.setToRecipients(toRecipients);
forwardPostRequestBody.setComment("Dana, hope you can make this meeting.");
graphClient.me().events().byEventId("{event-id}").forward().post(forwardPostRequestBody);


```