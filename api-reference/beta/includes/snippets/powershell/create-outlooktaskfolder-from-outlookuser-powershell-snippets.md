---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users

$params = @{
	name = "Volunteer"
}

# A UPN can also be used as -UserId.
New-MgBetaUserOutlookTaskFolder -UserId $userId -BodyParameter $params

```