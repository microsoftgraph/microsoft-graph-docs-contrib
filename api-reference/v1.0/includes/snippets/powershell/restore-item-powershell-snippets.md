---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Files

$params = @{
	parentReference = @{
		id = "String"
	}
	name = "String"
}

Restore-MgDriveItem -DriveId $driveId -DriveItemId $driveItemId -BodyParameter $params

```