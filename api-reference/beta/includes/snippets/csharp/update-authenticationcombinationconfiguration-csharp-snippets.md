---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AuthenticationCombinationConfiguration
{
	AppliesToCombinations = new List<AuthenticationMethodModes?>
	{
		AuthenticationMethodModes.Fido2,
	},
};
var result = await graphClient.Identity.ConditionalAccess.AuthenticationStrength.Policies["{authenticationStrengthPolicy-id}"].CombinationConfigurations["{authenticationCombinationConfiguration-id}"].PatchAsync(requestBody);


```