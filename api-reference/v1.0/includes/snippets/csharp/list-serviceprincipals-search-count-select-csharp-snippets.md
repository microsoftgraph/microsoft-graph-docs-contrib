---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("$count", "true"),
	new QueryOption("$search", "\"displayName:Team\"")
};

var servicePrincipals = await graphClient.ServicePrincipals
	.Request( queryOptions )
	.Header("ConsistencyLevel","eventual")
	.Select("accountEnabled,displayName,publisherName,servicePrincipalType,signInAudience")
	.GetAsync();

```