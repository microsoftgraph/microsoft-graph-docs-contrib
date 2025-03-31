---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	displayName = "Test User"
	identities = @(
		@{
			signInType = "emailAddress"
			issuer = "contoso.onmicrosoft.com"
			issuerAssignedId = "adelev@adatum.com"
		}
	)
	mail = "adelev@adatum.com"
	passwordProfile = @{
		password = "passwordValue"
		forceChangePasswordNextSignIn = $false
	}
	passwordPolicies = "DisablePasswordExpiration"
}

New-MgUser -BodyParameter $params

```