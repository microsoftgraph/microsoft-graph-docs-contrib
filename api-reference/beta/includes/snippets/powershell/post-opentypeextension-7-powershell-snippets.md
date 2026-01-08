---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Files

$params = @{
	name = "New Item"
	"@microsoft.graph.conflictBehavior" = "rename"
	extensions = @(
		@{
			extensionName = "myCustomExtension"
			myCustomString = "Contoso data"
			myCustomBool = $false
		}
	)
}

New-MgBetaDriveItemChild -DriveId $driveId -DriveItemId $driveItemId -BodyParameter $params

```