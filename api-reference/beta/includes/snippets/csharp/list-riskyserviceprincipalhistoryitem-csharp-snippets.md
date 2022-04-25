---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var history = await graphClient.IdentityProtection.RiskyServicePrincipals["{riskyServicePrincipal-id}"].History
	.Request()
	.GetAsync();

```