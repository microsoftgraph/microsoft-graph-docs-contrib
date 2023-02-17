---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("$count", "true")
};

var applications = await graphClient.Applications
	.Request( queryOptions )
	.Header("ConsistencyLevel","eventual")
	.Filter("owners/$count eq 0 or owners/$count eq 1")
	.Select("id,displayName")
	.GetAsync();

```