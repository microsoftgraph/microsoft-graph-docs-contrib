---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	allowedCombinations = @(
		"password, voice"
	)
}

Update-MgPolicyAuthenticationStrengthPolicyAllowedCombination -AuthenticationStrengthPolicyId $authenticationStrengthPolicyId -BodyParameter $params

```