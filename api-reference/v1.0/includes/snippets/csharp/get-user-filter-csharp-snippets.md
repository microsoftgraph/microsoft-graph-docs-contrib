---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("ConsistencyLevel", "eventual"),
	new QueryOption("$count", "true")
};

var users = await graphClient.Users
	.Request( queryOptions )
	.Filter("endsWith(mail,'@contoso.com')")
	.GetAsync();

```