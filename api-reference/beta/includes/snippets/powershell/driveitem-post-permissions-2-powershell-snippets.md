---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Files

$params = @{
	grantedToIdentitiesV2 = @{
		siteGroup = @{
			id = "10"
			displayName = "Internal Collaborators"
		}
	}
	roles = @(
	"write"
)
}

New-MgBetaDriveItemPermission -DriveId $driveId -DriveItemId $driveItemId -BodyParameter $params

```