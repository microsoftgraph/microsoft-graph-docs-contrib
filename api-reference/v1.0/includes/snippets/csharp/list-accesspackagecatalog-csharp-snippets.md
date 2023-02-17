---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var catalogs = await graphClient.IdentityGovernance.EntitlementManagement.Catalogs
	.Request()
	.GetAsync();

```