---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Calendar

$params = @{
	"@odata.type" = "microsoft.graph.room"
	displayName = "Conf Room 4/3.3G11"
	parentId = "46ef7aed-5d94-4fd4-ae03-b333bc7a6955"
	bookingType = "standard"
}

New-MgPlace -BodyParameter $params

```