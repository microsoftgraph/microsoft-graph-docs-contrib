---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Files

$params = @{
	recipients = @(
		@{
			email = "john@contoso.com"
		}
		@{
			email = "ryan@external.com"
		}
	)
	roles = @(
		"read"
	)
}

Grant-MgBetaSharePermission -SharedDriveItemId $sharedDriveItemId -BodyParameter $params

```