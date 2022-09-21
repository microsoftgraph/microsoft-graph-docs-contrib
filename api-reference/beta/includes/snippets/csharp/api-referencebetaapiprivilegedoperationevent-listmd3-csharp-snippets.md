---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("$count", "true")
};

var privilegedOperationEvents = await graphClient.PrivilegedOperationEvents
	.Request( queryOptions )
	.Filter("(creationDateTime ge 2017-06-25T07:00:00Z) and (creationDateTime le 2017-07-25T17:30:17Z)")
	.OrderBy("creationDateTime desc")
	.GetAsync();

```