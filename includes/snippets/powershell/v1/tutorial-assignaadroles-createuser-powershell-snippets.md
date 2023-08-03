---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	accountEnabled = $true
	displayName = "Aline Dupuy"
	mailNickname = "AlineD"
	userPrincipalName = "AlineD@Contoso.com"
	passwordProfile = @{
		forceChangePasswordNextSignIn = $true
		password = "xWwvJ]6NMw+bWH-d"
	}
}

New-MgUser -BodyParameter $params

```