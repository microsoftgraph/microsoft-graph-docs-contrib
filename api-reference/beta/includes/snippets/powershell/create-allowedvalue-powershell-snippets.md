---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	Id = "Alpine"
	IsActive = "true"
}

New-MgDirectoryCustomSecurityAttributeDefinitionAllowedValue -CustomSecurityAttributeDefinitionId $customSecurityAttributeDefinitionId -BodyParameter $params

```