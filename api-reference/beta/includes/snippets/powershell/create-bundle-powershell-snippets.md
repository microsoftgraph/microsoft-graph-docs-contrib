---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Files

$params = @{
	name = "Just some files"
	"@microsoft.graph.conflictBehavior" = "rename"
	bundle = @{
	}
	children = @(
		@{
			id = "1234asdf"
		}
		@{
			id = "1234qwerty"
		}
	)
}

New-MgDriveBundle -DriveId $driveId -BodyParameter $params

```