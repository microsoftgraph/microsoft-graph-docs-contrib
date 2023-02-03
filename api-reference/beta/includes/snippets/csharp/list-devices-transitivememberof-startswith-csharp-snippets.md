---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("$count", "true")
};

var group = await graphClient.Devices["{device-id}"].TransitiveMemberOf
	.Request( queryOptions )
	.Header("ConsistencyLevel","eventual")
	.Filter("startswith(displayName, 'a')")
	.OrderBy("displayName")
	.GetAsync();

```