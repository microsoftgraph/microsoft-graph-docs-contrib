---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Files

$params = @{
	grantees = @(
		@{
			email = "ryan@contoso.com"
		}
	)
}

Revoke-MgDriveItemPermissionGrant -DriveId $driveId -DriveItemId $driveItemId -PermissionId $permissionId -BodyParameter $params

```