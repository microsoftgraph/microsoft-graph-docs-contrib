---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Files

$params = @{
	extensionName = "myCustomExtension"
	myCustomString = "Contoso data"
	myCustomBool = $false
}

New-MgBetaDriveItemExtension -DriveId $driveId -DriveItemId $driveItemId -BodyParameter $params

```