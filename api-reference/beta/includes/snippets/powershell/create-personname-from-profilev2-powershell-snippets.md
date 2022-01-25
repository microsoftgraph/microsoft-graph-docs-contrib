---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.People

$params = @{
	DisplayName = "Innocenty Popov"
	First = "Innocenty"
	Initials = "IP"
	Last = "Popov"
	LanguageTag = "en-US"
	Maiden = $null
}

New-MgUserProfileName -UserId $userId -BodyParameter $params

```