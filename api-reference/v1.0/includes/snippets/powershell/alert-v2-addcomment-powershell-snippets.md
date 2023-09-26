---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	"@odata.type" = "microsoft.graph.security.alertComment"
	comment = "Demo for docs"
}

Set-MgSecurityAlert -AlertId $alertId -BodyParameter $params

```