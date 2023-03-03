---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	AccountEnabled = $true
	DisplayName = "MyTestUser1"
	MailNickname = "MyTestUser1"
	UserPrincipalName = "MyTestUser1@contoso.com"
	PasswordProfile = @{
		ForceChangePasswordNextSignIn = $true
		Password = "Contoso1234"
	}
}

New-MgUser -BodyParameter $params

```