---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("$search", "\"pizza\"")
};

var messages = await graphClient.Me.Messages
	.Request( queryOptions )
	.GetAsync();

```