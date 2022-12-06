---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var mailboxSettings = new MailboxSettings
{
	DelegateMeetingMessageDeliveryOptions = DelegateMeetingMessageDeliveryOptions.SendToDelegateAndPrincipal
};

var users = new User();
users.MailboxSettings = mailboxSettings;

await graphClient.Users["{user-id}"]
	.Request()
	.UpdateAsync(users);

```