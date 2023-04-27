---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Teams

$params = @{
	displayName = "displayName-value"
	apiVersion = 99
	encryption = @{
		protocol = "protocol-value"
		secret = "secret-value"
	}
	isActive = $true
	url = "url-value"
	supports = "supports-value"
}

New-MgTeamworkWorkforceIntegration -BodyParameter $params

```