---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Files

$params = @{
	name = "My Day at the Beach"
	"@microsoft.graph.conflictBehavior" = "rename"
	bundle = @{
		album = @{
		}
	}
	children = @(
		@{
			id = "1234asdf"
		}
	)
}

New-MgBetaDriveBundle -DriveId $driveId -BodyParameter $params

```