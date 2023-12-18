---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.People

$params = @{
	type = "other"
}

Update-MgBetaUserProfilePhone -UserId $userId -ItemPhoneId $itemPhoneId -BodyParameter $params

```