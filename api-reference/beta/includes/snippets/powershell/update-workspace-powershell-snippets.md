---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Calendar

$params = @{
	"@odata.type" = "microsoft.graph.workspace"
	nickname = "Conf Room"
	building = "1"
	label = "100"
	capacity = 
	isWheelChairAccessible = $false
}

Update-MgBetaPlace -PlaceId $placeId -BodyParameter $params

```