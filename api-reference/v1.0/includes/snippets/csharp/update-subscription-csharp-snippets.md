---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Subscription
{
	ExpirationDateTime = DateTimeOffset.Parse("2016-11-22T18:23:45.9356913Z"),
};
var result = await graphClient.Subscriptions["{subscription-id}"].PatchAsync(requestBody);


```