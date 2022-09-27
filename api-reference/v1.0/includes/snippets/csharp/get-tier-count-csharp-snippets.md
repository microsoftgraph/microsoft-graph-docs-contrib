---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("$count", "true"),
	new QueryOption("$search", "\"displayName:tier\"")
};

var user = await graphClient.Groups["{group-id}"].TransitiveMembers
	.Request( queryOptions )
	.Header("ConsistencyLevel","eventual")
	.Select("displayName,id")
	.OrderBy("displayName")
	.GetAsync();

```