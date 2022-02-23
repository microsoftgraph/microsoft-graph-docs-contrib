---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var riskyServicePrincipal = await graphClient.IdentityProtection.RiskyServicePrincipals["{riskyServicePrincipal-id}"]
	.Request()
	.GetAsync();

```