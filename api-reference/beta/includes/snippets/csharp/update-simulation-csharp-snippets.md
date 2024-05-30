---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new Simulation
{
	DisplayName = "Graph Simulation",
	DurationInDays = 7,
	AttackTechnique = SimulationAttackTechnique.CredentialHarvesting,
	AttackType = SimulationAttackType.Social,
	Status = SimulationStatus.Scheduled,
	IncludedAccountTarget = new AddressBookAccountTargetContent
	{
		OdataType = "#microsoft.graph.addressBookAccountTargetContent",
		Type = AccountTargetContentType.AddressBook,
		AccountTargetEmails = new List<string>
		{
			"faiza@contoso.com",
		},
	},
	ExcludedAccountTarget = new AddressBookAccountTargetContent
	{
		OdataType = "#microsoft.graph.addressBookAccountTargetContent",
		Type = AccountTargetContentType.AddressBook,
		AccountTargetEmails = new List<string>
		{
			"sam@contoso.com",
		},
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"@odata.etag" , "\"0100aa9b-0000-0100-0000-6396fa270000\""
		},
		{
			"payload@odata.bind" , "https://graph.microsoft.com/beta/security/attacksimulation/payloads/12345678-9abc-def0-123456789a"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Security.AttackSimulation.Simulations["{simulation-id}"].PatchAsync(requestBody);


```