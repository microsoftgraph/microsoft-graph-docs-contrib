---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.People

$params = @{
	Nickname = "Kesha"
}

# A UPN can also be used as -UserId.
Update-MgUserProfileName -UserId $userId -PersonNameId $personNameId -BodyParameter $params

```