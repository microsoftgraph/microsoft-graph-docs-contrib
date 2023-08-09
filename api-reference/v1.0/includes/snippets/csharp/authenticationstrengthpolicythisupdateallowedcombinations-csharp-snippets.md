---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Policies.AuthenticationStrengthPolicies.Item.UpdateAllowedCombinations.UpdateAllowedCombinationsPostRequestBody
{
	AllowedCombinations = new List<AuthenticationMethodModes?>
	{
		AuthenticationMethodModes.Password | AuthenticationMethodModes.Voice,
	},
};
var result = await graphClient.Policies.AuthenticationStrengthPolicies["{authenticationStrengthPolicy-id}"].UpdateAllowedCombinations.PostAsync(requestBody);


```