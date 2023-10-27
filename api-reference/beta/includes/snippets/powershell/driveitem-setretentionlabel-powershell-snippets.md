---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Files

$params = @{
	name = "Retention label for Contracts"
}

Update-MgBetaDriveItemRetentionLabel -DriveId $driveId -DriveItemId $driveItemId -BodyParameter $params

```