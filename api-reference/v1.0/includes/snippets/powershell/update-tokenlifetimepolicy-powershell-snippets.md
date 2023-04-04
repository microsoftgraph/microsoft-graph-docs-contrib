---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	Definition = @(
		"{"TokenLifetimePolicy":{"Version":1,"AccessTokenLifetime":"5:30:00"}}"
	)
	DisplayName = "Contoso token lifetime policy"
	IsOrganizationDefault = $true
}

Update-MgPolicyTokenLifetimePolicy -TokenLifetimePolicyId $tokenLifetimePolicyId -BodyParameter $params

```