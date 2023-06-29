---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.People

$params = @{
	address = "Innocenty.Popov@adventureworks.com"
}

# A UPN can also be used as -UserId.
New-MgUserProfileEmail -UserId $userId -BodyParameter $params

```