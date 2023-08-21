---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	isActive = "false"
}

Update-MgDirectoryCustomSecurityAttributeDefinitionAllowedValue -CustomSecurityAttributeDefinitionId $customSecurityAttributeDefinitionId -AllowedValueId $allowedValueId -BodyParameter $params

```