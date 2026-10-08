---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new OnFraudProtectionLoadStartListener
{
	OdataType = "#microsoft.graph.onFraudProtectionLoadStartListener",
	Conditions = new AuthenticationConditions
	{
		Applications = new AuthenticationConditionsApplications
		{
			IncludeApplications = new List<AuthenticationConditionApplication>
			{
				new AuthenticationConditionApplication
				{
					AppId = "0001111-aaaa-2222-bbbb-3333cccc4444",
				},
			},
		},
	},
	Handler = new OnFraudProtectionLoadStartExternalUsersAuthHandler
	{
		OdataType = "#microsoft.graph.onFraudProtectionLoadStartExternalUsersAuthHandler",
		SignUp = new FraudProtectionProviderConfiguration
		{
			OdataType = "#microsoft.graph.fraudProtectionProviderConfiguration",
			FraudProtectionProvider = new ArkoseFraudProtectionProvider
			{
				OdataType = "#microsoft.graph.arkoseFraudProtectionProvider",
				Id = "6fedd01b-0afb-4a07-967f-d1ccbd81102b",
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.AuthenticationEventListeners.PostAsync(requestBody);


```