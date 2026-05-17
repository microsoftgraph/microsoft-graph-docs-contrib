---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Calendar

$params = @{
	"@odata.type" = "microsoft.graph.section"
	label = "discuss area"
}

Update-MgPlace -PlaceId $placeId -BodyParameter $params

```