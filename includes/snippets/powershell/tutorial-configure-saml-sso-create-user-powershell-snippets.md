---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	accountEnabled = $true
	displayName = "MyTestUser1"
	mailNickname = "MyTestUser1"
	userPrincipalName = "MyTestUser1@contoso.com"
	passwordProfile = @{
		forceChangePasswordNextSignIn = $true
		password = "Contoso1234"
	}
}

New-MgUser -BodyParameter $params

```