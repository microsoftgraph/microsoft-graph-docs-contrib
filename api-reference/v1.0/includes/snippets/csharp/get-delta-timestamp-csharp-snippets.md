---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("token", "2021-09-29T20:00:00Z")
};

var delta = await graphClient.Me.Drive.Root
	.Delta()
	.Request( queryOptions )
	.GetAsync();

```