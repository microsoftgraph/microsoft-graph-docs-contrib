---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Files

$params = @{
	type = "view"
	password = "ThisIsMyPrivatePassword"
	scope = "anonymous"
	retainInheritedPermissions = $false
}

New-MgDriveItemLink -DriveId $driveId -DriveItemId $driveItemId -BodyParameter $params

```