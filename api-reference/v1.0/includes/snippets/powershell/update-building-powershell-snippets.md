---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Calendar

$params = @{
	"@odata.type" = "microsoft.graph.building"
	tags = @(
	"most popular building"
)
}

Update-MgPlace -PlaceId $placeId -BodyParameter $params

```