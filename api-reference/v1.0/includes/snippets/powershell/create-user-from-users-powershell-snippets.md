---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	AccountEnabled = $true
	DisplayName = "Adele Vance"
	MailNickname = "AdeleV"
	UserPrincipalName = "AdeleV@contoso.onmicrosoft.com"
	PasswordProfile = @{
		ForceChangePasswordNextSignIn = $true
		Password = "xWwvJ]6NMw+bWH-d"
	}
}

New-MgUser -BodyParameter $params

```