---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	DisplayName = "Greater Seattle District Technical Schools"
}

Update-MgAdministrativeUnit -AdministrativeUnitId $administrativeUnitId -BodyParameter $params

```