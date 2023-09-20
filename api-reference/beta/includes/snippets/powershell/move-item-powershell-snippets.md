---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Files

$params = @{
	parentReference = @{
		id = "new-parent-folder-id"
	}
	name = "new-item-name.txt"
}

Update-MgBetaDriveItem -DriveId $driveId -DriveItemId $driveItemId -BodyParameter $params

```