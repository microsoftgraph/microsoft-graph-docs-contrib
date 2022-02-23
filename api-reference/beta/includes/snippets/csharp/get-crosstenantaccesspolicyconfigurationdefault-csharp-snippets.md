---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var crossTenantAccessPolicyConfigurationDefault = await graphClient.Policies.CrossTenantAccessPolicy.Default
	.Request()
	.GetAsync();

```