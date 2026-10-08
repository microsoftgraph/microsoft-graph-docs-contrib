---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Calendar

$params = @{
	"@odata.type" = "microsoft.graph.desk"
	mode = @{
		"@odata.type" = "microsoft.graph.dropInPlaceMode"
	}
}

Update-MgPlace -PlaceId $placeId -BodyParameter $params

```