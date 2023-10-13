---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Files

$params = @{
	retentionSettings = @{
		isRecordLocked = $true
	}
}

Update-MgBetaDriveItemRetentionLabel -DriveId $driveId -DriveItemId $driveItemId -BodyParameter $params

```