---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("$search", "\"displayName:Browser\"")
};

var applications = await graphClient.Applications
	.Request( queryOptions )
	.GetAsync();

```