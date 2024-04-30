---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	"@odata.type" = "#microsoft.graph.security.authorityTemplate"
	displayName = "Business"
}

New-MgSecurityLabelAuthority -BodyParameter $params

```