---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	MembershipType = "Dynamic"
	MembershipRule = "(user.country -eq "United States")"
	MembershipRuleProcessingState = "On"
}

Update-MgAdministrativeUnit -AdministrativeUnitId $administrativeUnitId -BodyParameter $params

```