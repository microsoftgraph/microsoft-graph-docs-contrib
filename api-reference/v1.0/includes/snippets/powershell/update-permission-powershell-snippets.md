---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Files

$params = @{
	roles = @(
		"read"
	)
}

Update-MgDriveItemPermission -DriveId $driveId -DriveItemId $driveItemId -PermissionId $permissionId -BodyParameter $params

```