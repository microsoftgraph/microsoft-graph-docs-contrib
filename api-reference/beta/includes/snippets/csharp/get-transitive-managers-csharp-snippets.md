---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("$count", "true")
};

var user = await graphClient.Me
	.Request( queryOptions )
	.Header("ConsistencyLevel","eventual")
	.Expand("manager($levels=max;$select=id,displayName)")
	.Select("id,displayName")
	.GetAsync();

```