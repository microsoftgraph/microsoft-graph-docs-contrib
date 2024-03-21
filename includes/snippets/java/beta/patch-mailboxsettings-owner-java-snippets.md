---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MailboxSettings mailboxSettings = new MailboxSettings();
mailboxSettings.setDelegateMeetingMessageDeliveryOptions(DelegateMeetingMessageDeliveryOptions.SendToDelegateAndPrincipal);
MailboxSettings result = graphClient.users().byUserId("{user-id}").mailboxSettings().patch(mailboxSettings);


```