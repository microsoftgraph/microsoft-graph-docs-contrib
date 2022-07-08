---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.People

$params = @{
	AllowedAudiences = "organization"
	CountryCode = "NO"
}

# A UPN can also be used as -UserId.
New-MgUserProfileAccount -UserId $userId -BodyParameter $params

```