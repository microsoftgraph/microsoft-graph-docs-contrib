---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	DisplayName = "John Smith"
	Identities = @(
		@{
			SignInType = "userName"
			Issuer = "contoso.onmicrosoft.com"
			IssuerAssignedId = "johnsmith"
		}
		@{
			SignInType = "emailAddress"
			Issuer = "contoso.onmicrosoft.com"
			IssuerAssignedId = "jsmith@yahoo.com"
		}
		@{
			SignInType = "federated"
			Issuer = "facebook.com"
			IssuerAssignedId = "5eecb0cd"
		}
	)
	PasswordProfile = @{
		Password = "password-value"
		ForceChangePasswordNextSignIn = $false
	}
	PasswordPolicies = "DisablePasswordExpiration"
}

New-MgUser -BodyParameter $params

```