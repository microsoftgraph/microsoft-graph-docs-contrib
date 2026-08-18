---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Files

$params = @{
	sensitivityLabelId = "5feba255-812e-446a-ac59-a7044ef827b5"
	assignmentMethod = "standard"
	justificationText = "test_justification"
	appliedByUser = @{
		id = "4a2ec3c4-1b2d-3e4f-5a6b-7c8d9e0f1a2b"
	}
}

Set-MgDriveItemSensitivityLabel -DriveId $driveId -DriveItemId $driveItemId -BodyParameter $params

```