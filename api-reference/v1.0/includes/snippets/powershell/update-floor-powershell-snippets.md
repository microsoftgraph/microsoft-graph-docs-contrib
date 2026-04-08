---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Calendar

$params = @{
	"@odata.type" = "microsoft.graph.floor"
	isWheelChairAccessible = $true
	sortOrder = 
}

Update-MgPlace -PlaceId $placeId -BodyParameter $params

```