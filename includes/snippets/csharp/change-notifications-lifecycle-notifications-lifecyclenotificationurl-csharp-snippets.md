---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Subscription
{
	ChangeType = "created,updated",
	NotificationUrl = "https://webhook.azurewebsites.net/api/resourceNotifications",
	LifecycleNotificationUrl = "https://webhook.azurewebsites.net/api/lifecycleNotifications",
	Resource = "/users/{id}/messages",
	ExpirationDateTime = DateTimeOffset.Parse("2020-03-20T11:00:00.0000000Z"),
	ClientState = "<secretClientState>",
};
var result = await graphClient.Subscriptions.PostAsync(requestBody);


```