---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Files

$params = @{
	type = "embed"
}

New-MgBetaDriveItemLink -DriveId $driveId -DriveItemId $driveItemId -BodyParameter $params

```