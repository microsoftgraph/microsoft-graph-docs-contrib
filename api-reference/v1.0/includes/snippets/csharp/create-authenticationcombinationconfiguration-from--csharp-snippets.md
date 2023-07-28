---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Fido2CombinationConfiguration
{
	OdataType = "#microsoft.graph.fido2CombinationConfiguration",
	AllowedAAGUIDs = new List<string>
	{
		"486c3b50-889c-480a-abc5-c04ef7c873e0",
		"c042882f-a621-40c8-94d3-9cde3a826fed",
		"ec454c08-4c77-4012-9d48-45f7f0fccdfb",
	},
	AppliesToCombinations = new List<AuthenticationMethodModes?>
	{
		AuthenticationMethodModes.Fido2,
	},
};
var result = await graphClient.Identity.ConditionalAccess.AuthenticationStrength.Policies["{authenticationStrengthPolicy-id}"].CombinationConfigurations.PostAsync(requestBody);


```