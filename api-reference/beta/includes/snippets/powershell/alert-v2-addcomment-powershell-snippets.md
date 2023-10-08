---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	"@odata.type" = "microsoft.graph.security.alertComment"
	comment = "Demo for docs"
}

Set-MgBetaSecurityAlert -AlertId $alertId -BodyParameter $params

```