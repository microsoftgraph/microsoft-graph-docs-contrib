---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var appManagementPolicies = await graphClient.Policies.AppManagementPolicies
	.Request()
	.GetAsync();

```