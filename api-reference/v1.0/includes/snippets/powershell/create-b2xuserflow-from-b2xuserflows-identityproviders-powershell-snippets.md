---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	id = "Partner"
	userFlowType = "signUpOrSignIn"
	userFlowTypeVersion = 1
	identityProviders = @(
		@{
			id = "Facebook-OAuth"
			type = "Facebook"
			name = "Facebook"
		}
	)
}

New-MgIdentityB2XUserFlow -BodyParameter $params

```