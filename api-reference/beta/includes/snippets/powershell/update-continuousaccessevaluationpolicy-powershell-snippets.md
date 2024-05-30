---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	"@odata.type" = "#microsoft.graph.continuousAccessEvaluationPolicy"
	migrate = $true
}

Update-MgBetaIdentityContinuouAccessEvaluationPolicy -BodyParameter $params

```