---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var appManagementPolicy = new AppManagementPolicy
{
	IsEnabled = false
};

await graphClient.Policies.AppManagementPolicies["{appManagementPolicy-id}"]
	.Request()
	.UpdateAsync(appManagementPolicy);

```