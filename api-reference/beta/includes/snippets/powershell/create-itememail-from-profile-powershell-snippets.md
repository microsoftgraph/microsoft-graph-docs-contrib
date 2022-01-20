---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.People

$params = @{
	Address = "Innocenty.Popov@adventureworks.com"
}

New-MgUserProfileEmail -UserId $userId -BodyParameter $params

```