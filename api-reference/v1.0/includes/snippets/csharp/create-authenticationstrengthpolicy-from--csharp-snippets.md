---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AuthenticationStrengthPolicy
{
	OdataType = "#microsoft.graph.authenticationStrengthPolicy",
	DisplayName = "Contoso authentication level",
	Description = "The only authentication level allowed to access our secret apps",
	AllowedCombinations = new List<AuthenticationMethodModes?>
	{
		AuthenticationMethodModes.Password | AuthenticationMethodModes.HardwareOath,
		AuthenticationMethodModes.Password | AuthenticationMethodModes.Sms,
	},
};
var result = await graphClient.Policies.AuthenticationStrengthPolicies.PostAsync(requestBody);


```