---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	appliesToCombinations = @(
		"fido2"
	)
}

Update-MgIdentityConditionalAccessAuthenticationStrengthPolicyCombinationConfiguration -AuthenticationStrengthPolicyId $authenticationStrengthPolicyId -AuthenticationCombinationConfigurationId $authenticationCombinationConfigurationId -BodyParameter $params

```