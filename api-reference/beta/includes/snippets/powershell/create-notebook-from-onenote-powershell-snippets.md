---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Notes

$params = @{
	displayName = "My Private notebook"
}

# A UPN can also be used as -UserId.
New-MgBetaUserOnenoteNotebook -UserId $userId -BodyParameter $params

```