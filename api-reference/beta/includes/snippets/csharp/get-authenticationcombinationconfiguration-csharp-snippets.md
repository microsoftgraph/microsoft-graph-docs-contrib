---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var authenticationCombinationConfiguration = await graphClient.Identity.ConditionalAccess.AuthenticationStrengths.Policies["{authenticationStrengthPolicy-id}"].CombinationConfigurations["{authenticationCombinationConfiguration-id}"]
	.Request()
	.GetAsync();

```