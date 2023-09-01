---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Files

$params = @{
	parentReference = @{
		id = '{new-parent-folder-id}'
	}
	name = "new-item-name.txt"
}

Update-MgDriveItem -DriveId $driveId -DriveItemId $driveItemId -BodyParameter $params

```