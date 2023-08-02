---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	accountEnabled = $true
	displayName = "Requestor1"
	mailNickname = "Requestor1"
	userPrincipalName = "Requestor1@contoso.onmicrosoft.com"
	passwordProfile = @{
		forceChangePasswordNextSignIn = $true
		password = "Contoso1234"
	}
}

New-MgUser -BodyParameter $params

```