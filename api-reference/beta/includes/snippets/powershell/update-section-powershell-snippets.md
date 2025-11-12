---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Calendar

$params = @{
	"@odata.type" = "microsoft.graph.section"
	label = "discuss area"
}

Update-MgBetaPlace -PlaceId $placeId -BodyParameter $params

```