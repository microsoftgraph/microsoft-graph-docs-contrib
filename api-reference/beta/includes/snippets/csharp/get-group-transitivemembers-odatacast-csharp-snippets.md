---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("$count", "true")
};

var group = await graphClient.Groups["{group-id}"].TransitiveMembers
	.Request( queryOptions )
	.Header("ConsistencyLevel","eventual")
	.GetAsync();

```