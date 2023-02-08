---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var subscription = new Subscription
{
	ExpirationDateTime = DateTimeOffset.Parse("2016-03-22T11:00:00Z")
};

await graphClient.Subscriptions["{subscription-id}"]
	.Request()
	.UpdateAsync(subscription);

```