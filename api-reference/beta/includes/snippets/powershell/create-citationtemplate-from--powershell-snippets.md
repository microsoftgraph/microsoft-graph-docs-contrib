---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	"@odata.type" = "#microsoft.graph.security.citationTemplate"
	displayName = "String"
	createdBy = @{
		"@odata.type" = "microsoft.graph.identitySet"
	}
	citationUrl = "String"
	citationJurisdiction = "String"
}

New-MgBetaSecurityLabelCitation -BodyParameter $params

```