---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("$count", "true"),
	new QueryOption("$search", "\"displayName:wa\"")
};

var users = await graphClient.Users
	.Request( queryOptions )
	.Header("ConsistencyLevel","eventual")
	.OrderBy("displayName")
	.GetAsync();

```