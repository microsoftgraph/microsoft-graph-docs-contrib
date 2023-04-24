---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Files

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

Grant-MgSharePermission -SharedDriveItemId $sharedDriveItemId -BodyParameter $params

```