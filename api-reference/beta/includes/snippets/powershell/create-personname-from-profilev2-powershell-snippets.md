---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.People

$params = @{
	displayName = "Innocenty Popov"
	first = "Innocenty"
	initials = "IP"
	last = "Popov"
	languageTag = "en-US"
	maiden = $null
}

# A UPN can also be used as -UserId.
New-MgUserProfileName -UserId $userId -BodyParameter $params

```