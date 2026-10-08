---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	"@odata.type" = "#microsoft.graph.security.autoAuditingConfiguration"
	isAutomatic = $true
}

Update-MgSecurityIdentitySettingAutoAuditingConfiguration -BodyParameter $params

```