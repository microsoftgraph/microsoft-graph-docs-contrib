---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.People

$params = @{
	type = "other"
}

Update-MgUserProfilePhone -UserId $userId -ItemPhoneId $itemPhoneId -BodyParameter $params

```