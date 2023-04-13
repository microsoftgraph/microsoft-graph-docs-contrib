---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var authenticationStrengths = await graphClient.Identity.ConditionalAccess.AuthenticationStrengths
	.Request()
	.Select("AuthenticationCombinations")
	.GetAsync();

var authenticationCombinations = authenticationStrengths.AuthenticationCombinations;

```