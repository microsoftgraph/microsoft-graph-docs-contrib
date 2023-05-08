---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Subscription
{
	ChangeType = "created",
	NotificationUrl = "https://webhook.azurewebsites.net/api/send/myNotifyClient",
	Resource = "users/622eaaff-0683-4862-9de4-f2ec83c2bd98/messages",
	ExpirationDateTime = DateTimeOffset.Parse("2021-07-07T21:42:18.2257768+00:00"),
	ClientState = "secretClientState",
};
var result = await graphClient.Subscriptions.PostAsync(requestBody);


```