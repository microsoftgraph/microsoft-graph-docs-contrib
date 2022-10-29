---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Users

$params = @{
	BusinessPhones = @(
		"+1 425 555 0109"
	)
	OfficeLocation = "18/2111"
}

Update-MgUser -UserId $userId -BodyParameter $params

```