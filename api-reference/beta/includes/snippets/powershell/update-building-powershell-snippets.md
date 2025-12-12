---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Calendar

$params = @{
	"@odata.type" = "microsoft.graph.building"
	tags = @(
	"most popular building"
)
}

Update-MgBetaPlace -PlaceId $placeId -BodyParameter $params

```