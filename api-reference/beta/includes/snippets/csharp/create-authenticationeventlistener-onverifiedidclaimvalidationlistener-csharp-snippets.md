---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new AuthenticationEventListener
{
	OdataType = "#microsoft.graph.onVerifiedIdClaimValidationListener",
	DisplayName = "Verified ID Claim Validation Listener",
	Priority = 500,
	Conditions = new AuthenticationConditions
	{
		Applications = new AuthenticationConditionsApplications
		{
			IncludeAllApplications = false,
			IncludeApplications = new List<AuthenticationConditionApplication>
			{
				new AuthenticationConditionApplication
				{
					AppId = "63856651-13d9-4784-9abf-20758d509e19",
				},
			},
		},
	},
	AuthenticationEventsFlowId = "5a8e8f57-82b2-4cbf-b145-3e6e0c154897",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"handler" , new UntypedObject(new Dictionary<string, UntypedNode>
			{
				{
					"@odata.type", new UntypedString("#microsoft.graph.onVerifiedIdClaimValidationCustomExtensionHandler")
				},
				{
					"configuration", new UntypedObject(new Dictionary<string, UntypedNode>
					{
						{
							"@odata.type", new UntypedString("#microsoft.graph.customExtensionOverwriteConfiguration")
						},
						{
							"clientConfiguration", new UntypedObject(new Dictionary<string, UntypedNode>
							{
								{
									"@odata.type", new UntypedString("#microsoft.graph.customExtensionClientConfiguration")
								},
								{
									"maximumRetries", new UntypedString("1")
								},
								{
									"timeoutInMilliseconds", new UntypedString("2000")
								},
							})
						},
						{
							"behaviorOnError", new UntypedObject(new Dictionary<string, UntypedNode>
							{
								{
									"@odata.type", new UntypedString("#microsoft.graph.customExtensionBehaviorOnError")
								},
							})
						},
					})
				},
				{
					"customExtension", new UntypedObject(new Dictionary<string, UntypedNode>
					{
						{
							"id", new UntypedString("6a0a3429-be77-0aed-951e-1c8aed62bf8a")
						},
					})
				},
			})
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.AuthenticationEventListeners.PostAsync(requestBody);


```