---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	displayName = "Graph Simulation"
	"payload@odata.bind" = "https://graph.microsoft.com/beta/security/attacksimulation/payloads/12345678-9abc-def0-123456789a"
	durationInDays = 7
	attackTechnique = "credentialHarvesting"
	status = "scheduled"
	durationInDays = "3"
	includedAccountTarget = @{
		"@odata.type" = "#microsoft.graph.addressBookAccountTargetContent"
		type = "addressBook"
		accountTargetEmails = @(
			"john@contoso.com"
		)
	}
}

New-MgSecurityAttackSimulation -BodyParameter $params

```