---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.People

$params = @{
	Type = "birthday"
	Date = "1980-01-08"
}

New-MgUserProfileAnniversary -UserId $userId -BodyParameter $params

```