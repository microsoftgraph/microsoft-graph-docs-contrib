---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	Definition = @(
		"{"TokenLifetimePolicy":{"Version":1,"AccessTokenLifetime":"8:00:00"}}"
	)
	DisplayName = "Contoso token lifetime policy"
	IsOrganizationDefault = $true
}

New-MgPolicyTokenLifetimePolicy -BodyParameter $params

```