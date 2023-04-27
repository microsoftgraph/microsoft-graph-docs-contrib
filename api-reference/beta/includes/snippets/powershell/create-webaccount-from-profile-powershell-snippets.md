---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.People

$params = @{
	description = "My Github contributions!"
	userId = "innocenty.popov"
	service = @{
		name = "GitHub"
		webUrl = "https://github.com"
	}
}

# A UPN can also be used as -UserId.
New-MgUserProfileWebAccount -UserId $userId -BodyParameter $params

```