---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	DisplayName = "displayName-value"
	Description = "description-value"
	Visibility = "visibility-value"
}

Update-MgAdministrativeUnit -AdministrativeUnitId $administrativeUnitId -BodyParameter $params

```