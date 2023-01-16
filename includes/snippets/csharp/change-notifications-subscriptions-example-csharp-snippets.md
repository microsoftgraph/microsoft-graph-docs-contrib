---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var subscription = new Subscription
{
	ChangeType = "created,updated",
	NotificationUrl = "https://webhook.azurewebsites.net/notificationClient",
	Resource = "/me/mailfolders('inbox')/messages",
	ExpirationDateTime = DateTimeOffset.Parse("2016-03-20T11:00:00Z"),
	ClientState = "SecretClientState"
};

await graphClient.Subscriptions
	.Request()
	.AddAsync(subscription);

```