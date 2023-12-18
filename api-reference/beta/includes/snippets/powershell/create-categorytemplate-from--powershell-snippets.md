---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	"@odata.type" = "#microsoft.graph.security.categoryTemplate"
	displayName = "String"
	createdBy = @{
		"@odata.type" = "microsoft.graph.identitySet"
	}
}

New-MgBetaSecurityLabelCategory -BodyParameter $params

```