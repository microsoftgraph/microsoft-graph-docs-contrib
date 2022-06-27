---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("$count", "true")
};

var group = await graphClient.Groups["{group-id}"].MemberOf
	.Request( queryOptions )
	.Header("ConsistencyLevel","eventual")
	.Filter("startswith(displayName, 'A')")
	.OrderBy("displayName")
	.GetAsync();

```