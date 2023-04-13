---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var authenticationCombinationConfiguration = new Fido2CombinationConfiguration
{
	AllowedAAGUIDs = new List<String>()
	{
		"486c3b50-889c-480a-abc5-c04ef7c873e0",
		"c042882f-a621-40c8-94d3-9cde3a826fed",
		"ec454c08-4c77-4012-9d48-45f7f0fccdfb"
	},
	AppliesToCombinations = new List<AuthenticationMethodModes>()
	{
		AuthenticationMethodModes.Fido2
	}
};

await graphClient.Identity.ConditionalAccess.AuthenticationStrengths.Policies["{authenticationStrengthPolicy-id}"].CombinationConfigurations
	.Request()
	.AddAsync(authenticationCombinationConfiguration);

```