---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	PasswordProfile = @{
		ForceChangePasswordNextSignIn = $false
		Password = "xWwvJ]6NMw+bWH-d"
	}
}

Update-MgUser -UserId $userId -BodyParameter $params

```