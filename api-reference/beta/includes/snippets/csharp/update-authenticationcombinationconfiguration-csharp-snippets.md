---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AuthenticationCombinationConfiguration
{
	AppliesToCombinations = new List<AuthenticationMethodModes?>
	{
		AuthenticationMethodModes.Fido2,
	},
};
var result = await graphClient.Identity.ConditionalAccess.AuthenticationStrengths.Policies["{authenticationStrengthPolicy-id}"].CombinationConfigurations["{authenticationCombinationConfiguration-id}"].PatchAsync(requestBody);


```