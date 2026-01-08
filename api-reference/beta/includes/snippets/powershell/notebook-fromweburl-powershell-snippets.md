---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Notes

$params = @{
	webUrl = "webUrl value"
}

# A UPN can also be used as -UserId.
Get-MgBetaUserOnenoteNotebookFromWebUrl -UserId $userId -BodyParameter $params

```