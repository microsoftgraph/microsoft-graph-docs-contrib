---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Files

$params = @{
	type = "view"
	scope = "anonymous"
	password = "String"
	recipients = @(
		@{
			"@odata.type" = "microsoft.graph.driveRecipient"
		}
	)
	sendNotification = $true
	retainInheritedPermissions = $false
}

New-MgBetaDriveItemLink -DriveId $driveId -DriveItemId $driveItemId -BodyParameter $params

```