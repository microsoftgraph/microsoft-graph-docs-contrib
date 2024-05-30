---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.DirectoryManagement

$params = @{
	"allowedValues@delta" = @(
		@{
			id = "Baker"
			isActive = $false
		}
		@{
			id = "Skagit"
			isActive = $true
		}
	)
}

Update-MgBetaDirectoryCustomSecurityAttributeDefinition -CustomSecurityAttributeDefinitionId $customSecurityAttributeDefinitionId -BodyParameter $params

```