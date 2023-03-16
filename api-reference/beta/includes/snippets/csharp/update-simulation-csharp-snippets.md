---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Simulation
{
	DisplayName = "Graph Simulation",
	DurationInDays = 7,
	AttackTechnique = SimulationAttackTechnique.CredentialHarvesting,
	AttackType = SimulationAttackType.Social,
	Status = SimulationStatus.Scheduled,
	IncludedAccountTarget = new AccountTargetContent
	{
		OdataType = "#microsoft.graph.addressBookAccountTargetContent",
		Type = AccountTargetContentType.AddressBook,
		AdditionalData = new Dictionary<string, object>
		{
			{
				"accountTargetEmails" , new List<string>
				{
					"faiza@contoso.com",
				}
			},
		},
	},
	ExcludedAccountTarget = new AccountTargetContent
	{
		OdataType = "#microsoft.graph.addressBookAccountTargetContent",
		Type = AccountTargetContentType.AddressBook,
		AdditionalData = new Dictionary<string, object>
		{
			{
				"accountTargetEmails" , new List<string>
				{
					"sam@contoso.com",
				}
			},
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
var result = await graphClient.Security.AttackSimulation.Simulations["{simulation-id}"].PatchAsync(requestBody);


```