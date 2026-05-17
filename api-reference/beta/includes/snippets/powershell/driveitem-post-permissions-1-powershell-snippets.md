---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Files

$params = @{
	grantedToV2 = @{
		application = @{
			id = "89ea5c94-7736-4e25-95ad-3fa95f62b66e"
		}
	}
	roles = @(
	"write"
)
}

New-MgBetaDriveItemPermission -DriveId $driveId -DriveItemId $driveItemId -BodyParameter $params

```