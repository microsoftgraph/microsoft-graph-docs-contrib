---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users.Actions

$params = @{
	securityEnabledOnly = $true
}

# A UPN can also be used as -UserId.
Get-MgUserMemberObject -UserId $userId -BodyParameter $params

```