---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

Message message = new Message();
message.setSubject("Party planning");
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
Message result = graphClient.me().messages().post(message);


```