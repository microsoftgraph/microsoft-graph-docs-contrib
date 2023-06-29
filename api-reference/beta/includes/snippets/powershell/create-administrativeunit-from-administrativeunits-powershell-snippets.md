---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	displayName = "Seattle District Technical Schools"
	description = "Seattle district technical schools administration"
	membershipType = "Dynamic"
	membershipRule = "(user.country -eq "United States")"
	membershipRuleProcessingState = "On"
}

New-MgAdministrativeUnit -BodyParameter $params

```