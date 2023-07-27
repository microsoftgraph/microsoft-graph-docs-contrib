---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Search

$params = @{
	acl = @(
		@{
			type = "everyone"
			value = "67a141d8-cf4e-4528-ba07-bed21bfacd2d"
			accessType = "grant"
		}
	)
}

Set-MgBetaExternalConnectionItem -ExternalConnectionId $externalConnectionId -ExternalItemId $externalItemId -BodyParameter $params

```