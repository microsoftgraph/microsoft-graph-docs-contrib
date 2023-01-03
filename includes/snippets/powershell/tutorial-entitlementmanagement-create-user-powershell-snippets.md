---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	AccountEnabled = $true
	DisplayName = "Requestor1"
	MailNickname = "Requestor1"
	UserPrincipalName = "Requestor1@contoso.onmicrosoft.com"
	PasswordProfile = @{
		ForceChangePasswordNextSignIn = $true
		Password = "Contoso1234"
	}
}

New-MgUser -BodyParameter $params

```