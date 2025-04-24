---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Files

$params = @{
	extensionName = "newExtensionName"
	myCustomString = "Contoso data"
	myCustomBool = $false
}

Update-MgBetaDriveItemExtension -DriveId $driveId -DriveItemId $driveItemId -ExtensionId $extensionId -BodyParameter $params

```