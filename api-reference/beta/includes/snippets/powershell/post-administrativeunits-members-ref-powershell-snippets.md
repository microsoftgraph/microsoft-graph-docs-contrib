---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	"@odata.id" = "https://graph.microsoft.com/beta/groups/{id}"
}

New-MgAdministrativeUnitMemberByRef -AdministrativeUnitId $administrativeUnitId -BodyParameter $params

```