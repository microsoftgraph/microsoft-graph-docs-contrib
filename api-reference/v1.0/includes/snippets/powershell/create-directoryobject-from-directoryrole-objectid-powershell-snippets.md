---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	"@odata.id" = "https://graph.microsoft.com/v1.0/directoryObjects/15c1a2d5-9101-44b2-83ab-885db8a647ca"
}

New-MgDirectoryRoleMemberByRef -DirectoryRoleId $directoryRoleId -BodyParameter $params

```