---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Files

$params = @{
	name = "New Folder"
	folder = @{
	}
	"@microsoft.graph.conflictBehavior" = "rename"
}

New-MgDriveItemChild -DriveId $driveId -DriveItemId $driveItemId -BodyParameter $params

```