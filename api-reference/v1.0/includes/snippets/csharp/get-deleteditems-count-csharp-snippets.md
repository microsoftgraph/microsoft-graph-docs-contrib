---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("$count", "true")
};

var group = await graphClient.Directory.DeletedItems
	.Request( queryOptions )
	.Header("ConsistencyLevel","eventual")
	.Select("id,displayName,deletedDateTime")
	.OrderBy("deletedDateTime asc")
	.GetAsync();

```