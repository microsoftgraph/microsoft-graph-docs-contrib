---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Simulation
{
	Id = "2f5548d1-0dd8-4cc8-9de0-e0d6ec7ea3dc",
	DisplayName = "Graph Simulation",
	Description = "Test simulation created using postman",
	PayloadDeliveryPlatform = PayloadDeliveryPlatform.Email,
	DurationInDays = 7,
	AttackTechnique = SimulationAttackTechnique.CredentialHarvesting,
	AttackType = SimulationAttackType.Social,
	Status = SimulationStatus.Scheduled,
	CompletionDateTime = DateTimeOffset.Parse("2022-09-16T06:13:08.4297612Z"),
	LaunchDateTime = DateTimeOffset.Parse("2022-09-05T06:13:08.4297612Z"),
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
			"payload@odata.bind" , "https://graph.microsoft.com/beta/security/attacksimulation/payloads/12345678-9abc-def0-123456789a"
		},
	},
};
var result = await graphClient.Security.AttackSimulation.Simulations["simulation-id"].PatchAsync(requestBody);


```