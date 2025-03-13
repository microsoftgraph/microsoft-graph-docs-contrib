---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users.Actions

$params = @{
	currentPassword = "xWwvJ]6NMw+bWH-d"
	newPassword = "0eM85N54wFxWwvJ]"
}

# A UPN can also be used as -UserId.
Update-MgBetaUserPassword -UserId $userId -BodyParameter $params

```