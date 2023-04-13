---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var riskyUser = await graphClient.IdentityProtection.RiskyUsers["{riskyUser-id}"]
	.Request()
	.GetAsync();

```