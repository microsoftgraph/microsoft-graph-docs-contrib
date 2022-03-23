---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var riskyServicePrincipals = await graphClient.IdentityProtection.RiskyServicePrincipals
	.Request()
	.GetAsync();

```