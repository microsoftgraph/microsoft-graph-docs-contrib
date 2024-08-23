---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new AuthenticationStrengthPolicy
{
	DisplayName = "Example",
	RequirementsSatisfied = AuthenticationStrengthRequirements.Mfa,
	AllowedCombinations = new List<AuthenticationMethodModes?>
	{
		AuthenticationMethodModes.Fido2,
	},
	CombinationConfigurations = new List<AuthenticationCombinationConfiguration>
	{
		new Fido2CombinationConfiguration
		{
			OdataType = "#microsoft.graph.fido2CombinationConfiguration",
			Id = "42235320-c8db-4d8c-9344-8f1ce87f734b",
			AppliesToCombinations = new List<AuthenticationMethodModes?>
			{
				AuthenticationMethodModes.Fido2,
			},
			AllowedAAGUIDs = new List<string>
			{
				"de1e552d-db1d-4423-a619-566b625cdc84",
				"90a3ccdf-635c-4729-a248-9b709135078f",
			},
		},
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"combinationConfigurations@odata.context" , "https://graph.microsoft.com/v1.0/$metadata#policies/authenticationStrengthPolicies('5790842a-5bab-44c2-9cf1-b38d675b70ea')/combinationConfigurations"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Policies.AuthenticationStrengthPolicies.PostAsync(requestBody);


```