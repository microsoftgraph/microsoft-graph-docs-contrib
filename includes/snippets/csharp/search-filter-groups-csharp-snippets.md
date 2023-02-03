---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("$search", "\"displayName:OneVideo\"")
};

var groups = await graphClient.Groups
	.Request( queryOptions )
	.Filter("mailEnabled eq true")
	.GetAsync();

```