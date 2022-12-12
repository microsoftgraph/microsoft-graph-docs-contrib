---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var authenticationMethodModes = await graphClient.Identity.ConditionalAccess.AuthenticationStrengths.AuthenticationMethodModes
	.Request()
	.GetAsync();

```