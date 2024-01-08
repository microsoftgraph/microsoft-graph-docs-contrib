---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	definition = @(
		'{"TokenLifetimePolicy":{"Version":1,"AccessTokenLifetime":"5:30:00"}}'
	)
	displayName = "Contoso token lifetime policy"
	isOrganizationDefault = $true
}

Update-MgBetaPolicyTokenLifetimePolicy -TokenLifetimePolicyId $tokenLifetimePolicyId -BodyParameter $params

```