---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	"@odata.type" = "#microsoft.graph.security.filePlanReferenceTemplate"
	displayName = "String"
	createdBy = @{
		"@odata.type" = "microsoft.graph.identitySet"
	}
}

New-MgBetaSecurityLabelFilePlanReference -BodyParameter $params

```