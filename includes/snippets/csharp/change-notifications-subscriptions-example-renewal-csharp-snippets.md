---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Subscription
{
	ExpirationDateTime = DateTimeOffset.Parse("2016-03-22T11:00:00.0000000Z"),
};
var result = await graphClient.Subscriptions["{subscription-id}"].PatchAsync(requestBody);


```