---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Subscription
{
	ChangeType = "created,updated",
	NotificationUrl = "https://webhook.azurewebsites.net/notificationClient",
	Resource = "/me/mailfolders('inbox')/messages",
	ExpirationDateTime = DateTimeOffset.Parse("2016-03-20T11:00:00.0000000Z"),
	ClientState = "SecretClientState",
};
var result = await graphClient.Subscriptions.PostAsync(requestBody);


```