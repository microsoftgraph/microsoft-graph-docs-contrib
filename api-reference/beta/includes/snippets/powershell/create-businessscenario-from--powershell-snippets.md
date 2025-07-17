---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.BusinessScenario

$params = @{
	"@odata.type" = "#microsoft.graph.businessScenario"
	displayName = "Contoso Order Tracking"
	uniqueName = "com.contoso.apps.ordertracking"
}

New-MgBetaSolutionBusinessScenario -BodyParameter $params

```