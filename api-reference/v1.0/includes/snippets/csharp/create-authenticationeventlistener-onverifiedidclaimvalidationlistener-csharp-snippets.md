---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new OnVerifiedIdClaimValidationListener
{
	OdataType = "#microsoft.graph.onVerifiedIdClaimValidationListener",
	DisplayName = "Verified ID Claim Validation Listener",
	Conditions = new AuthenticationConditions
	{
		Applications = new AuthenticationConditionsApplications
		{
			IncludeApplications = new List<AuthenticationConditionApplication>
			{
				new AuthenticationConditionApplication
				{
					AppId = "63856651-13d9-4784-9abf-20758d509e19",
				},
			},
			AdditionalData = new Dictionary<string, object>
			{
				{
					"includeAllApplications" , false
				},
			},
		},
	},
	AuthenticationEventsFlowId = "5a8e8f57-82b2-4cbf-b145-3e6e0c154897",
	Handler = new OnVerifiedIdClaimValidationCustomExtensionHandler
	{
		OdataType = "#microsoft.graph.onVerifiedIdClaimValidationCustomExtensionHandler",
		Configuration = new CustomExtensionOverwriteConfiguration
		{
			OdataType = "#microsoft.graph.customExtensionOverwriteConfiguration",
			ClientConfiguration = new CustomExtensionClientConfiguration
			{
				OdataType = "#microsoft.graph.customExtensionClientConfiguration",
				MaximumRetries = 1,
				TimeoutInMilliseconds = 2000,
			},
			BehaviorOnError = new CustomExtensionBehaviorOnError
			{
				OdataType = "#microsoft.graph.customExtensionBehaviorOnError",
			},
		},
		CustomExtension = new OnVerifiedIdClaimValidationCustomExtension
		{
			Id = "6a0a3429-be77-0aed-951e-1c8aed62bf8a",
		},
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"priority" , 500
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.AuthenticationEventListeners.PostAsync(requestBody);


```