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
					"@odata.type", new UntypedString("#microsoft.graph.servicePrincipalSignIn")
				},
				{
					"servicePrincipalId", new UntypedString("c65b94a5-0049-439a-a6fd-bce307077730")
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
					"servicePrincipalRiskLevel", new UntypedString("high")
				},
				{
					"country", new UntypedString("CA")
				},
				{
					"ipAddress", new UntypedString("40.77.182.32")
				},
			})
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.ConditionalAccess.Evaluate.PostAsEvaluatePostResponseAsync(requestBody);


```