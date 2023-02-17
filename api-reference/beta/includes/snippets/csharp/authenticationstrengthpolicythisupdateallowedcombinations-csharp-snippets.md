---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var allowedCombinations = new List<AuthenticationMethodModes>()
{
	AuthenticationMethodModes.Password | AuthenticationMethodModes.Voice
};

await graphClient.Policies.AuthenticationStrengthPolicies["{authenticationStrengthPolicy-id}"]
	.UpdateAllowedCombinations(allowedCombinations)
	.Request()
	.PostAsync();

```