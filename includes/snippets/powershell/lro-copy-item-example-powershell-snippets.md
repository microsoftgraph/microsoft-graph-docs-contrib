---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Files

$params = @{
	parentReference = @{
		path = "/drive/root:/Documents"
	}
	name = "Copy of LargeFolder1"
}

Copy-MgDriveItem -DriveId $driveId -DriveItemId $driveItemId -BodyParameter $params

```