---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("$count", "true")
};

var user = await graphClient.Groups["{group-id}"].Members
	.Request( queryOptions )
	.Header("ConsistencyLevel","eventual")
	.Search("displayName:Pr")
	.Select("displayName,id")
	.OrderBy("displayName")
	.GetAsync();

```