---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	displayName = "Executive Division"
	description = "Executive division administration"
	isMemberManagementRestricted = $true
}

New-MgDirectoryAdministrativeUnit -BodyParameter $params

```