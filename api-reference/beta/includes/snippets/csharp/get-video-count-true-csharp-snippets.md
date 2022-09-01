---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("$count", "true")
};

var groups = await graphClient.Groups
	.Request( queryOptions )
	.Header("ConsistencyLevel","eventual")
	.Search("displayName:Video")
	.GetAsync();

```