---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var simulation = new Simulation
{
	DisplayName = "Graph Simulation",
	PayloadDeliveryPlatform = PayloadDeliveryPlatform.Email,
	DurationInDays = 7,
	AttackTechnique = SimulationAttackTechnique.CredentialHarvesting,
	AttackType = SimulationAttackType.Social,
	Status = SimulationStatus.Scheduled,
	CompletionDateTime = DateTimeOffset.Parse("2022-09-16T06:13:08.4297612Z"),
	LaunchDateTime = DateTimeOffset.Parse("2022-09-05T06:13:08.4297612Z"),
	IncludedAccountTarget = new AddressBookAccountTargetContent
	{
		Type = AccountTargetContentType.AddressBook,
		AccountTargetEmails = new List<String>()
		{
			"john@contoso.com"
		}
	},
	AdditionalData = new Dictionary<string, object>()
	{
		{"payload@odata.bind", "https://graph.microsoft.com/beta/security/attacksimulation/payloads/12345678-9abc-def0-123456789a"}
	}
};

await graphClient.Security.AttackSimulation.Simulations
	.Request()
	.AddAsync(simulation);

```