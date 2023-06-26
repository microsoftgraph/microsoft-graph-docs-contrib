---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	description = "Target completion date (YYYY/MM/DD)"
}

Update-MgDirectoryCustomSecurityAttributeDefinition -CustomSecurityAttributeDefinitionId $customSecurityAttributeDefinitionId -BodyParameter $params

```