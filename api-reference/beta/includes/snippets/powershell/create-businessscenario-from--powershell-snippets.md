---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Bookings

$params = @{
	"@odata.type" = "#microsoft.graph.businessScenario"
	DisplayName = "Contoso Order Tracking"
	UniqueName = "com.contoso.apps.ordertracking"
}

New-MgBusinessScenario -BodyParameter $params

```