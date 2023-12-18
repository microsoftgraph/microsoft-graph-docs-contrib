---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Files

$params = @{
	comment = "Updating the latest guidelines"
}

Invoke-MgBetaCheckinDriveItem -DriveId $driveId -DriveItemId $driveItemId -BodyParameter $params

```