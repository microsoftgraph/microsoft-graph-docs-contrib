---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var simulation = new Simulation
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
	IncludedAccountTarget = new AddressBookAccountTargetContent
	{
		Type = AccountTargetContentType.AddressBook,
		AccountTargetEmails = new List<String>()
		{
			"faiza@contoso.com"
		}
	},
	ExcludedAccountTarget = new AddressBookAccountTargetContent
	{
		Type = AccountTargetContentType.AddressBook,
		AccountTargetEmails = new List<String>()
		{
			"sam@contoso.com"
		}
	},
	AdditionalData = new Dictionary<string, object>()
	{
		{"payload@odata.bind", "https://graph.microsoft.com/beta/security/attacksimulation/payloads/12345678-9abc-def0-123456789a"}
	}
};

await graphClient.Security.AttackSimulation.Simulations["{simulation-id}"]
	.Request()
	.UpdateAsync(simulation);

```