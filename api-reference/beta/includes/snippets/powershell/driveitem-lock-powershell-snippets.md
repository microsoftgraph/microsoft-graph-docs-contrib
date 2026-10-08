---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Files

$params = @{
	durationMinutes = 30
}

Lock-MgBetaDriveItem -DriveId $driveId -DriveItemId $driveItemId -BodyParameter $params

```