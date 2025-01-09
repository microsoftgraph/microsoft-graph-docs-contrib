---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	displayName = "ABCWorkforceIntegration"
	apiVersion = 1
	isActive = $true
	encryption = @{
		protocol = "sharedSecret"
		secret = "My Secret"
	}
	url = "https://ABCWorkforceIntegration.com/Contoso/"
	supportedEntities = "Shift,SwapRequest"
	eligibilityFilteringEnabledEntities = "SwapRequest"
}

Update-MgTeamworkWorkforceIntegration -WorkforceIntegrationId $workforceIntegrationId -BodyParameter $params

```