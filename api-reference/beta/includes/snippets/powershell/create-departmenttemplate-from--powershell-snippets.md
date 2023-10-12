---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	"@odata.type" = "#microsoft.graph.security.departmentTemplate"
	displayName = "String"
	createdBy = @{
		"@odata.type" = "microsoft.graph.identitySet"
	}
}

New-MgBetaSecurityLabelDepartment -BodyParameter $params

```