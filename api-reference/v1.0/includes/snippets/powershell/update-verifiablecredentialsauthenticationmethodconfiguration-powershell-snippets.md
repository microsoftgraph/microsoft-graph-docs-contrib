---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	state = "disabled"
	excludeTargets = @(
		@{
			id = "10051f25-53a8-4f81-8a0b-9fc22887e640"
			targetType = "group"
		}
		@{
			id = "e2c2244f-66cc-4d5b-9042-686f9fa42986"
			targetType = "group"
		}
	)
}

Update-MgPolicyAuthenticationMethodPolicyAuthenticationMethodConfiguration -AuthenticationMethodConfigurationId $authenticationMethodConfigurationId -BodyParameter $params

```