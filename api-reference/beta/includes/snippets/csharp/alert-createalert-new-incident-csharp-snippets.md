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
		Title = "Unauthorized access attempt",
		Severity = AlertSeverity.High,
		Description = "Multiple failed login attempts from an unusual location.",
		Category = "InitialAccess",
		MitreTechniques = new List<string>
		{
			"T1078",
		},
		IsExcludedFromCorrelation = false,
		EntityDefinitions = new List<EntityDefinition>
		{
			new EntityDefinition
			{
				EntityType = ManualAlertEntityType.User,
				EntityIdentifier = "userPrincipalName",
				IdentifierValue = "admin@contoso.com",
				Role = EntityDefinitionInputRole.Impacted,
			},
			new EntityDefinition
			{
				EntityType = ManualAlertEntityType.Ip,
				EntityIdentifier = "address",
				IdentifierValue = "198.51.100.42",
				Role = EntityDefinitionInputRole.Related,
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Alerts_v2.MicrosoftGraphSecurityCreateAlert.PostAsync(requestBody);


```