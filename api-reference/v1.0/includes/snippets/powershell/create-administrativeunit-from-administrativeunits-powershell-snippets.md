---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	displayName = "Seattle District Technical Schools"
	description = "Seattle district technical schools administration"
	visibility = "HiddenMembership"
}

New-MgDirectoryAdministrativeUnit -BodyParameter $params

```