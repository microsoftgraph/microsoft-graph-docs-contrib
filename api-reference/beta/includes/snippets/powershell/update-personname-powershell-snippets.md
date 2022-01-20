---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.People

$params = @{
	Nickname = "Kesha"
}

Update-MgUserProfileName -UserId $userId -PersonNameId $personNameId -BodyParameter $params

```