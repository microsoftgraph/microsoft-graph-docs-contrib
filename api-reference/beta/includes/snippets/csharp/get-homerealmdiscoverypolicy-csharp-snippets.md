---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var {id} = await graphClient.Policies["homeRealmDiscoveryPolicies"].{id}
	.Request()
	.GetAsync();

```