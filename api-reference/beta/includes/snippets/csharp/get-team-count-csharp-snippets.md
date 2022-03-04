---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("$count", "true")
};

var servicePrincipals = await graphClient.ServicePrincipals
	.Request()
	.Header("ConsistencyLevel","eventual")
	.Search("displayName:Team")
	.GetAsync();

```