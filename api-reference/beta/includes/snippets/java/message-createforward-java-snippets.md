---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.messages.item.createforward.CreateForwardPostRequestBody createForwardPostRequestBody = new com.microsoft.graph.beta.users.item.messages.item.createforward.CreateForwardPostRequestBody();
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
createForwardPostRequestBody.setMessage(message);
createForwardPostRequestBody.setComment("Dana, just want to make sure you get this; you'll need this if the project gets approved.");
var result = graphClient.me().messages().byMessageId("{message-id}").createForward().post(createForwardPostRequestBody);


```