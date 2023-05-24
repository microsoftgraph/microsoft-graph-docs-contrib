---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.People

$params = @{
	categories = @(
		"Sports"
	)
	description = "World's greatest football club"
	displayName = "Chelsea FC"
	webUrl = "https://www.chelseafc.com"
}

# A UPN can also be used as -UserId.
New-MgUserProfileInterest -UserId $userId -BodyParameter $params

```