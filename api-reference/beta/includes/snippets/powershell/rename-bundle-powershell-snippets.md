---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Files

$params = @{
	name = "Shared legal agreements"
}

Update-MgBetaDriveItem -DriveId $driveId -DriveItemId $driveItemId -BodyParameter $params

```