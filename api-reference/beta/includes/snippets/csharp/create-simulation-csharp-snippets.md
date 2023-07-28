---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Simulation
{
	DisplayName = "Graph Simulation",
	DurationInDays = 7,
	AttackTechnique = SimulationAttackTechnique.CredentialHarvesting,
	Status = SimulationStatus.Scheduled,
	IncludedAccountTarget = new AddressBookAccountTargetContent
	{
		OdataType = "#microsoft.graph.addressBookAccountTargetContent",
		Type = AccountTargetContentType.AddressBook,
		AccountTargetEmails = new List<string>
		{
			"john@contoso.com",
		},
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"payload@odata.bind" , "https://graph.microsoft.com/beta/security/attacksimulation/payloads/12345678-9abc-def0-123456789a"
		},
	},
};
var result = await graphClient.Security.AttackSimulation.Simulations.PostAsync(requestBody);


```