---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	Id = "Customer"
	UserFlowType = "signUpOrSignIn"
	UserFlowTypeVersion = 3
	IdentityProviders = @(
		@{
			Id = "Facebook-OAuth"
		}
	)
}

New-MgIdentityB2CUserFlow -BodyParameter $params

```