---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Files

$params = @{
	name = "New Folder"
	folder = @{
	}
	"@microsoft.graph.conflictBehavior" = "rename"
}

New-MgBetaDriveItemChild -DriveId $driveId -DriveItemId $driveItemId -BodyParameter $params

```