---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

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

Update-MgDirectoryCustomSecurityAttributeDefinition -CustomSecurityAttributeDefinitionId $customSecurityAttributeDefinitionId -BodyParameter $params

```