---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Security;

var requestBody = new ManualAlert
{
	OdataType = "#microsoft.graph.security.manualAlert",
	Title = "Malicious file detected on device",
	Description = "Sandbox analysis revealed malicious behavior in downloaded file.",
	Category = "Execution",
	Severity = AlertSeverity.High,
	RecommendedActions = "Isolate device, remove file, scan for additional IOCs",
	LinkToIncident = 28282L,
	EntityDefinitions = new List<EntityDefinitionInput>
	{
		new EntityDefinitionInput
		{
			EntityType = ManualAlertEntityType.File,
			EntityIdentifier = "sha256",
			IdentifierValue = "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855",
			Role = EntityDefinitionInputRole.Related,
		},
		new EntityDefinitionInput
		{
			EntityType = ManualAlertEntityType.Device,
			EntityIdentifier = "deviceName",
			IdentifierValue = "DESKTOP-VICTIM01",
			Role = EntityDefinitionInputRole.Impacted,
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Alerts_v2.PostAsync(requestBody);


```