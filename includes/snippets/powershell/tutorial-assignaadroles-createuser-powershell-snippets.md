---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	AccountEnabled = $true
	DisplayName = "Aline Dupuy"
	MailNickname = "AlineD"
	UserPrincipalName = "AlineD@Contoso.com"
	PasswordProfile = @{
		ForceChangePasswordNextSignIn = $true
		Password = "xWwvJ]6NMw+bWH-d"
	}
}

New-MgUser -BodyParameter $params

```