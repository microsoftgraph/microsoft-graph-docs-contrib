---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("$count", "true")
};

var transitiveRoleAssignments = await graphClient.RoleManagement.Directory.TransitiveRoleAssignments
	.Request( queryOptions )
	.Header("ConsistencyLevel","eventual")
	.Filter("principalId eq '2c7936bc-3517-40f3-8eda-4806637b6516'")
	.GetAsync();

```