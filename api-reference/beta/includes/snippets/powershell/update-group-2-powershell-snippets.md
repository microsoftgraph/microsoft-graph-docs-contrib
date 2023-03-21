---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Groups

$params = @{
	AssignedLabels = @(
		@{
			LabelId = "45cd0c48-c540-4358-ad79-a3658cdc5b88"
		}
	)
}

Update-MgGroup -GroupId $groupId -BodyParameter $params

```