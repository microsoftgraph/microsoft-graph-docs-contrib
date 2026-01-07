---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Networkaccess;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new PolicyRule
{
	Name = "Contoso TLS Rule 1 - Updated",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"priority" , 200
		},
		{
			"description" , "My TLS rule - Updated"
		},
		{
			"action" , "bypass"
		},
		{
			"settings" , new UntypedObject(new Dictionary<string, UntypedNode>
			{
				{
					"status", new UntypedString("disabled")
				},
			})
		},
		{
			"matchingConditions" , new UntypedObject(new Dictionary<string, UntypedNode>
			{
				{
					"destinations", new UntypedArray(new List<UntypedNode>
					{
						new UntypedObject(new Dictionary<string, UntypedNode>
						{
							{
								"@odata.type", new UntypedString("#microsoft.graph.networkaccess.tlsInspectionFqdnDestination")
							},
							{
								"values", new UntypedArray(new List<UntypedNode>
								{
									new UntypedString("www.contoso.test-updated.com"),
									new UntypedString("*.contoso.org"),
								})
							},
						}),
					})
				},
			})
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.NetworkAccess.TlsInspectionPolicies["{tlsInspectionPolicy-id}"].PolicyRules["{policyRule-id}"].PatchAsync(requestBody);


```