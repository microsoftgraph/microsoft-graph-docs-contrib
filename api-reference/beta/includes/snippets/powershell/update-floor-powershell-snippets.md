---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Calendar

$params = @{
	"@odata.type" = "microsoft.graph.floor"
	isWheelChairAccessible = $true
	sortOrder = 
}

Update-MgBetaPlace -PlaceId $placeId -BodyParameter $params

```