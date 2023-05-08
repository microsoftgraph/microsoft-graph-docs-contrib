---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.People

$params = @{
	allowedAudiences = "me"
	displayName = "Secret Hideout"
}

Update-MgUserProfileAddress -UserId $userId -ItemAddressId $itemAddressId -BodyParameter $params

```