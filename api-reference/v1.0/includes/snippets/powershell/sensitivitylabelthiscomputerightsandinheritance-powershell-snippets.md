---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	delegatedUserEmail = "String"
	locale = "String"
	protectedContents = @(
		@{
			"@odata.type" = "microsoft.graph.protectedContent"
		}
	)
	supportedContentFormats = @(
	"String"
)
}

Invoke-MgAndSecurityDataSecurityAndGovernanceSensitivityLabel -BodyParameter $params

```