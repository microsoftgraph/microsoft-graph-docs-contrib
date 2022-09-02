---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var appManagementPolicy = new AppManagementPolicy
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"@odata.id", "https://graph.microsoft.com/beta/policies/appManagementPolicies/{id}"}
	}
};

await graphClient.Applications["{application-id}"].AppManagementPolicies.References
	.Request()
	.AddAsync(appManagementPolicy);

```