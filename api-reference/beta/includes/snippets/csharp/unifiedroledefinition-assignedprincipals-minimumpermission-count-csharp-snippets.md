---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("$count", "true")
};

var assignedPrincipals = await graphClient.RoleManagement.Directory.RoleDefinitions["{unifiedRoleDefinition-id}"]
	.AssignedPrincipals()
	.Request( queryOptions )
	.GetAsync();

```