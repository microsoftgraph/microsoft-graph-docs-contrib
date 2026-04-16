---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	id = "Customer"
	userFlowType = "signUpOrSignIn"
	userFlowTypeVersion = 3
	identityProviders = @(
		@{
			id = "Facebook-OAuth"
		}
	)
}

New-MgBetaIdentityB2CUserFlow -BodyParameter $params

```