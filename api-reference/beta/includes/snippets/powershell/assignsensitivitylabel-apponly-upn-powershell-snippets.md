---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Files

$params = @{
	sensitivityLabelId = "5feba255-812e-446a-ac59-a7044ef827b5"
	assignmentMethod = "standard"
	justificationText = "test_justification"
	appliedByUser = @{
		userPrincipalName = "adelev@contoso.com"
	}
}

Set-MgBetaDriveItemSensitivityLabel -DriveId $driveId -DriveItemId $driveItemId -BodyParameter $params

```