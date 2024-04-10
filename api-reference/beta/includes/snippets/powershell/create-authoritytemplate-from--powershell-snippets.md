---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	"@odata.type" = "#microsoft.graph.security.authorityTemplate"
	displayName = "Business"
}

New-MgBetaSecurityLabelAuthority -BodyParameter $params

```