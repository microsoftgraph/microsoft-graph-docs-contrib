---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Files

$params = @{
	grantees = @(
		@{
			email = "ryan@contoso.com"
		}
	)
}

Revoke-MgBetaDriveItemPermissionGrant -DriveId $driveId -DriveItemId $driveItemId -PermissionId $permissionId -BodyParameter $params

```