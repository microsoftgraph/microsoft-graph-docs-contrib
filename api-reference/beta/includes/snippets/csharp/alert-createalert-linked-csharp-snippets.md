---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Security.Alerts_v2.MicrosoftGraphSecurityCreateAlert;
using Microsoft.Graph.Beta.Models.Security;

var requestBody = new CreateAlertPostRequestBody
{
	CreateAlertInput = new CreateAlertInput
	{
		Title = "Suspicious PowerShell activity",
		Severity = AlertSeverity.Medium,
		Description = "PowerShell script execution was identified during analyst triage.",
		Category = "Execution",
		RecommendedActions = "Review the script contents and isolate the affected device.",
		MitreTechniques = new List<string>
		{
			"T1059.001",
		},
		LinkToIncident = 42L,
		IsExcludedFromCorrelation = false,
		EntityDefinitions = new List<EntityDefinition>
		{
			new EntityDefinition
			{
				EntityType = ManualAlertEntityType.Device,
				EntityIdentifier = "deviceId",
				IdentifierValue = "d1234567-abcd-4f01-8abc-890123456789",
				Role = EntityDefinitionInputRole.Impacted,
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Alerts_v2.MicrosoftGraphSecurityCreateAlert.PostAsync(requestBody);


```