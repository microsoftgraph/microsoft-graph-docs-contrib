---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	"@odata.type" = "#microsoft.graph.security.citationTemplate"
	displayName = "Contoso Company Policy"
	citationUrl = "www.citationUrl.com"
	citationJurisdiction = "Contoso"
}

New-MgBetaSecurityLabelCitation -BodyParameter $params

```