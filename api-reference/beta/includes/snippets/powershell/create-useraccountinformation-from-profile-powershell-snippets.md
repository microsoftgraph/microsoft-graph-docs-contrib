---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.People

$params = @{
	AllowedAudiences = "organization"
	CountryCode = "NO"
}

New-MgUserProfileAccount -UserId $userId -BodyParameter $params

```