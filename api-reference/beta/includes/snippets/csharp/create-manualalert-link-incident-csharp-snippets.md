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
	Title = "Malicious file detected on device",
	Description = "Sandbox analysis revealed malicious behavior in downloaded file.",
	Category = "Execution",
	Severity = AlertSeverity.High,
	RecommendedActions = "Isolate device, remove file, scan for additional IOCs",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"linkToIncident" , 28282
		},
		{
			"entityDefinitions" , new List<object>
			{
				new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"entityType", new UntypedString("file")
					},
					{
						"entityIdentifier", new UntypedString("sha256")
					},
					{
						"identifierValue", new UntypedString("e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855")
					},
					{
						"role", new UntypedString("related")
					},
				}),
				new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"entityType", new UntypedString("device")
					},
					{
						"entityIdentifier", new UntypedString("deviceName")
					},
					{
						"identifierValue", new UntypedString("DESKTOP-VICTIM01")
					},
					{
						"role", new UntypedString("impacted")
					},
				}),
			}
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Alerts_v2.PostAsync(requestBody);


```