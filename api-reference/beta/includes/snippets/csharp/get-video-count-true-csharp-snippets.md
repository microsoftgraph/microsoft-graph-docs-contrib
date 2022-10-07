---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("$count", "true"),
	new QueryOption("$search", "\"displayName:Video\"")
};

var groups = await graphClient.Groups
	.Request( queryOptions )
	.Header("ConsistencyLevel","eventual")
	.GetAsync();

```