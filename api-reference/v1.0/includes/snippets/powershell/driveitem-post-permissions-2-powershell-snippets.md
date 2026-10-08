---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Files

$params = @{
	grantedToV2 = @{
		siteGroup = @{
			id = "10"
			displayName = "Internal Collaborators"
		}
	}
	roles = @(
	"write"
)
}

New-MgDriveItemPermission -DriveId $driveId -DriveItemId $driveItemId -BodyParameter $params

```