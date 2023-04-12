---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	definition = @(
		"{"TokenLifetimePolicy":{"Version":1,"AccessTokenLifetime":"5:30:00"}}"
	)
	displayName = "Contoso token lifetime policy"
	isOrganizationDefault = $true
}

Update-MgPolicyTokenLifetimePolicy -TokenLifetimePolicyId $tokenLifetimePolicyId -BodyParameter $params

```