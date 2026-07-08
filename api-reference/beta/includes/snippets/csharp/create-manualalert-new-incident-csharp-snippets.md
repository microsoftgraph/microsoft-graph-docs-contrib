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
	Title = "Suspicious login from TOR exit node",
	Description = "User account showed login activity from known TOR exit node. Manual investigation revealed potential account compromise.",
	Category = "InitialAccess",
	Severity = AlertSeverity.High,
	RecommendedActions = "Reset user credentials, enable MFA, review recent user activity",
	MitreTechniques = new List<string>
	{
		"T1078",
	},
	EntityDefinitions = new List<EntityDefinitionInput>
	{
		new EntityDefinitionInput
		{
			EntityType = ManualAlertEntityType.User,
			EntityIdentifier = "userPrincipalName",
			IdentifierValue = "john.doe@contoso.com",
			Role = EntityDefinitionInputRole.Impacted,
		},
		new EntityDefinitionInput
		{
			EntityType = ManualAlertEntityType.Ip,
			EntityIdentifier = "address",
			IdentifierValue = "185.220.101.50",
			Role = EntityDefinitionInputRole.Related,
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.Alerts_v2.PostAsync(requestBody);


```