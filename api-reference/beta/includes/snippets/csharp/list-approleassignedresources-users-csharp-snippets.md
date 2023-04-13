---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("$count", "true")
};

var appRoleAssignedResources = await graphClient.Me.AppRoleAssignedResources
	.Request( queryOptions )
	.Header("ConsistencyLevel","eventual")
	.Select("displayName,accountEnabled,servicePrincipalType,signInAudience")
	.GetAsync();

```