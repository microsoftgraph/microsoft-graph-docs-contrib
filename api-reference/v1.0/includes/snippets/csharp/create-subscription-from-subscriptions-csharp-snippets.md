---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Subscription
{
	ChangeType = "created",
	NotificationUrl = "https://webhook.azurewebsites.net/api/send/myNotifyClient",
	Resource = "me/mailFolders('Inbox')/messages",
	ExpirationDateTime = DateTimeOffset.Parse("2016-11-20T18:23:45.9356913Z"),
	ClientState = "secretClientValue",
	LatestSupportedTlsVersion = "v1_2",
};
var result = await graphClient.Subscriptions.PostAsync(requestBody);


```