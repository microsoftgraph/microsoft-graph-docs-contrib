---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Groups

$params = @{
	assignedLabels = @(
		@{
			labelId = "45cd0c48-c540-4358-ad79-a3658cdc5b88"
		}
	)
}

Update-MgBetaGroup -GroupId $groupId -BodyParameter $params

```