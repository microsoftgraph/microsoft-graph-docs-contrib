---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Calendar

$params = @{
	"@odata.type" = "microsoft.graph.workspace"
	parentId = "f7de7265-e420-47b4-9d49-28d728716241"
	displayName = "testSpace001"
	tags = @(
	"test"
)
}

New-MgBetaPlace -BodyParameter $params

```