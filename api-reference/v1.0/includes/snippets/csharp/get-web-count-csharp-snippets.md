---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("$count", "true"),
	new QueryOption("$search", "\"displayName:Web\"")
};

var applications = await graphClient.Applications
	.Request( queryOptions )
	.Header("ConsistencyLevel","eventual")
	.GetAsync();

```