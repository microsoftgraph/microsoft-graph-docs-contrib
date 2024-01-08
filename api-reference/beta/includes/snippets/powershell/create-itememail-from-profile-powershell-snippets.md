---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.People

$params = @{
	address = "Innocenty.Popov@adventureworks.com"
}

# A UPN can also be used as -UserId.
New-MgBetaUserProfileEmail -UserId $userId -BodyParameter $params

```