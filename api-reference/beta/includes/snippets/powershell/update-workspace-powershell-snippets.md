---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Calendar

$params = @{
	"@odata.type" = "microsoft.graph.workspace"
	Nickname = "Conf Room"
	Building = "1"
	Label = "100"
	Capacity = 
	IsWheelChairAccessible = $false
}

Update-MgPlace -PlaceId $placeId -BodyParameter $params

```