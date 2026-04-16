---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Groups

$params = @{
	"@odata.type" = "#microsoft.graph.onPremisesSyncBehavior"
	isCloudManaged = $true
}

Update-MgBetaGroupOnPremiseSyncBehavior -GroupId $groupId -BodyParameter $params

```