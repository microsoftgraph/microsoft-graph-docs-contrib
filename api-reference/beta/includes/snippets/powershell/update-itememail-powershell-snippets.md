---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.People

$params = @{
	DisplayName = "Business Email"
	Type = "work"
}

Update-MgUserProfileEmail -UserId $userId -ItemEmailId $itemEmailId -BodyParameter $params

```