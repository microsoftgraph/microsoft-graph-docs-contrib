---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Users.Actions

$params = @{
	webUrl = "webUrl value"
}

# A UPN can also be used as -UserId.
Get-MgBetaUserOnenoteNotebookFromWebUrl -UserId $userId -BodyParameter $params

```