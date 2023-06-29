---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.People

$params = @{
	categories = @(
		"football"
	)
	displayName = "Lyn Damer"
	webUrl = "www.lyndamer.no"
}

# A UPN can also be used as -UserId.
New-MgUserProfileWebsite -UserId $userId -BodyParameter $params

```