---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var authenticationStrengthPolicy = new AuthenticationStrengthPolicy
{
	DisplayName = "Contoso authentication level",
	Description = "The only authentication level allowed to access our secret apps",
	AllowedCombinations = new List<AuthenticationMethodModes>()
	{
		AuthenticationMethodModes.Password | AuthenticationMethodModes.HardwareOath,
		AuthenticationMethodModes.Password | AuthenticationMethodModes.Sms
	}
};

await graphClient.Policies.AuthenticationStrengthPolicies
	.Request()
	.AddAsync(authenticationStrengthPolicy);

```