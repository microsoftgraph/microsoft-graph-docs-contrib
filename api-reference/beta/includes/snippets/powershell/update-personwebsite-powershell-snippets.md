---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.People

$params = @{
	description = "Lyn Damer play in the Women's 1st Division (Toppserien) in Norway"
}

# A UPN can also be used as -UserId.
Update-MgUserProfileWebsite -UserId $userId -PersonWebsiteId $personWebsiteId -BodyParameter $params

```