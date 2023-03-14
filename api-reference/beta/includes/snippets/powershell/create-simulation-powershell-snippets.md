---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	DisplayName = "Graph Simulation"
	"Payload@odata.bind" = "https://graph.microsoft.com/beta/security/attacksimulation/payloads/12345678-9abc-def0-123456789a"
	DurationInDays = 7
	AttackTechnique = "credentialHarvesting"
	Status = "scheduled"
	DurationInDays = "3"
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