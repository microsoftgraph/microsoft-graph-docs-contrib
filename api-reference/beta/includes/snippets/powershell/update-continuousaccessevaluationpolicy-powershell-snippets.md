---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.continuousAccessEvaluationPolicy"
	migrate = $true
}

Update-MgIdentityContinuouAccessEvaluationPolicy -BodyParameter $params

```