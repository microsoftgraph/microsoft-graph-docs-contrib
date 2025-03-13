---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Files

$params = @{
	retentionSettings = @{
		isRecordLocked = $true
	}
}

Update-MgDriveItemRetentionLabel -DriveId $driveId -DriveItemId $driveItemId -BodyParameter $params

```