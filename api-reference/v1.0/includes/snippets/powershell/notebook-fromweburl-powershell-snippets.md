---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Notes

$params = @{
	webUrl = "webUrl value"
}

# A UPN can also be used as -UserId.
Get-MgUserOnenoteNotebookFromWebUrl -UserId $userId -BodyParameter $params

```