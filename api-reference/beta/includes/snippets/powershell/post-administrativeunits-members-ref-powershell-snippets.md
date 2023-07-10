---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.DirectoryManagement

$params = @{
	"@odata.id" = "https://graph.microsoft.com/beta/groups/{id}"
}

New-MgBetaAdministrativeUnitMemberByRef -AdministrativeUnitId $administrativeUnitId -BodyParameter $params

```