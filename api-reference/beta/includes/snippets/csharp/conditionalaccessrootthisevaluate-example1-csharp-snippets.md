---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Identity.ConditionalAccess.Evaluate;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new EvaluatePostRequestBody
{
	AppliedPoliciesOnly = true,
	AdditionalData = new Dictionary<string, object>
	{
		{
			"signInIdentity" , new UntypedObject(new Dictionary<string, UntypedNode>
			{
				{
					"@odata.type", new UntypedString("#microsoft.graph.userSignIn")
				},
				{
					"userId", new UntypedString("15dc174b-f34c-4588-ac45-61d6e05dce93")
				},
			})
		},
		{
			"signInContext" , new UntypedObject(new Dictionary<string, UntypedNode>
			{
				{
					"@odata.type", new UntypedString("#microsoft.graph.applicationContext")
				},
				{
					"includeApplications", new UntypedArray(new List<UntypedNode>
					{
						new UntypedString("00000003-0000-0ff1-ce00-000000000000"),
					})
				},
			})
		},
		{
			"signInConditions" , new UntypedObject(new Dictionary<string, UntypedNode>
			{
				{
					"devicePlatform", new UntypedString("android")
				},
				{
					"clientAppType", new UntypedString("browser")
				},
				{
					"signInRiskLevel", new UntypedString("high")
				},
				{
					"userRiskLevel", new UntypedString("high")
				},
				{
					"country", new UntypedString("US")
				},
				{
					"ipAddress", new UntypedString("40.77.182.32")
				},
				{
					"insiderRiskLevel", new UntypedString("elevated")
				},
				{
					"authenticationFlow", new UntypedObject(new Dictionary<string, UntypedNode>
					{
						{
							"transferMethod", new UntypedString("deviceCodeFlow")
						},
					})
				},
				{
					"deviceInfo", new UntypedObject(new Dictionary<string, UntypedNode>
					{
						{
							"isCompliant", new UntypedBoolean(true)
						},
					})
				},
			})
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.ConditionalAccess.Evaluate.PostAsEvaluatePostResponseAsync(requestBody);


```