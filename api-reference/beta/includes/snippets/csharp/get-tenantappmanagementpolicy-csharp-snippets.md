---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tenantAppManagementPolicy = await graphClient.Policies.DefaultAppManagementPolicy
	.Request()
	.GetAsync();

```