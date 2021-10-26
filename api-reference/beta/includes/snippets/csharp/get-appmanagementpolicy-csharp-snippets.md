---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var appManagementPolicy = await graphClient.Policies.AppManagementPolicies["{appManagementPolicy-id}"]
	.Request()
	.GetAsync();

```