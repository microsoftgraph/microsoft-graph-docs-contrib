---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Security;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new Alert
{
	OdataType = "#microsoft.graph.security.manualAlert",
	Title = "Suspicious login from TOR exit node",
	Description = "User account showed login activity from known TOR exit node. Manual investigation revealed potential account compromise.",
	Category = "InitialAccess",
	Severity = AlertSeverity.High,
	RecommendedActions = "Reset user credentials, enable MFA, review recent user activity",
	MitreTechniques = new List<string>
	{
		"T1078",
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"entityDefinitions" , new List<object>
			{
				new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"entityType", new UntypedString("user")
					},
					{
						"entityIdentifier", new UntypedString("userPrincipalName")
					},
					{
						"identifierValue", new UntypedString("john.doe@contoso.com")
					},
					{
						"role", new UntypedString("impacted")
					},
				}),
				new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"entityType", new UntypedString("ip")
					},
					{
						"entityIdentifier", new UntypedString("address")
					},
					{
						"identifierValue", new UntypedString("185.220.101.50")
					},
					{
						"role", new UntypedString("related")
					},
				}),
			}
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Alerts_v2.PostAsync(requestBody);


```