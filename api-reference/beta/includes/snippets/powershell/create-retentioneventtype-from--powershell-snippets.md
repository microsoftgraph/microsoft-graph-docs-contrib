---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	"@odata.type" = "#microsoft.graph.security.retentionEventType"
	displayName = "String"
	description = "String"
	createdBy = @{
		"@odata.type" = "microsoft.graph.identitySet"
	}
}

New-MgBetaSecurityTriggerTypeRetentionEventType -BodyParameter $params

```