---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Calendar

$params = @{
	"@odata.type" = "microsoft.graph.desk"
	mode = @{
		"@odata.type" = "microsoft.graph.dropInPlaceMode"
	}
}

Update-MgBetaPlace -PlaceId $placeId -BodyParameter $params

```