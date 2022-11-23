---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var authenticationMethodModeDetail = await graphClient.Identity.ConditionalAccess.AuthenticationStrengths.AuthenticationMethodModes["{authenticationMethodModeDetail-id}"]
	.Request()
	.GetAsync();

```