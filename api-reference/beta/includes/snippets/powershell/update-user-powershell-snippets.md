---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users

$params = @{
	businessPhones = @(
		"+1 425 555 0109"
	)
	officeLocation = "18/2111"
}

# A UPN can also be used as -UserId.
Update-MgBetaUser -UserId $userId -BodyParameter $params

```