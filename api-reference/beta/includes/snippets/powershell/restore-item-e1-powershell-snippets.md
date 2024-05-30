---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Files

$params = @{
	parentReference = @{
		id = "String"
	}
	name = "String"
}

Restore-MgBetaDriveItem -DriveId $driveId -DriveItemId $driveItemId -BodyParameter $params

```