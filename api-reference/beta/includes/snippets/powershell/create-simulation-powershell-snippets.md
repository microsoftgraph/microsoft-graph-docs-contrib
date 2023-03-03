---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	DisplayName = "Graph Simulation"
	PayloadDeliveryPlatform = "email"
	"Payload@odata.bind" = "https://graph.microsoft.com/beta/security/attacksimulation/payloads/12345678-9abc-def0-123456789a"
	DurationInDays = 7
	AttackTechnique = "credentialHarvesting"
	AttackType = "social"
	Status = "scheduled"
	CompletionDateTime = [System.DateTime]::Parse("2022-09-16T06:13:08.4297612Z")
	LaunchDateTime = [System.DateTime]::Parse("2022-09-05T06:13:08.4297612Z")
	IncludedAccountTarget = @{
		"@odata.type" = "#microsoft.graph.addressBookAccountTargetContent"
		Type = "addressBook"
		AccountTargetEmails = @(
			"john@contoso.com"
		)
	}
}

New-MgSecurityAttackSimulation -BodyParameter $params

```