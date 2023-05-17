---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Files

$params = @{
	type = "embed"
}

New-MgDriveItemLink -DriveId $driveId -DriveItemId $driveItemId -BodyParameter $params

```