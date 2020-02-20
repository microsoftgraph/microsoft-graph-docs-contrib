---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Policies["homeRealmDiscoveryPolicies"].{id}
	.Request()
	.DeleteAsync();

```