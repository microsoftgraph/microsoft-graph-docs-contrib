---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.People

$params = @{
	displayName = "Innocenty Popov"
	first = "Innocenty"
	initials = "IP"
	last = "Popov"
	languageTag = "en-US"
	maiden = $null
}

# A UPN can also be used as -UserId.
New-MgBetaUserProfileName -UserId $userId -BodyParameter $params

```