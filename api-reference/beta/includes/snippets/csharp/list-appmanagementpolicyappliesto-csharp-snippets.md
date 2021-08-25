---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var appliesTo = await graphClient.Policies.AppManagementPolicies["{appManagementPolicy-id}"].AppliesTo
	.Request()
	.GetAsync();

```