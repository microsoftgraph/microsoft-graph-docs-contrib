---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Files

$params = @{
	grantedToV2 = @{
		sharePointGroup = @{
			id = "ZGYwZTEzYTgtOTExOS00MjdmLWEzNjktOTdjOWM3YjNlYjcyXzE0"
		}
	}
	roles = @(
	"write"
)
}

New-MgBetaDriveItemPermission -DriveId $driveId -DriveItemId $driveItemId -BodyParameter $params

```