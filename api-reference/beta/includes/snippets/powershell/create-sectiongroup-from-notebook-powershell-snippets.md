---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Notes

$params = @{
	displayName = "Section group name"
}

# A UPN can also be used as -UserId.
New-MgBetaUserOnenoteNotebookSectionGroup -UserId $userId -NotebookId $notebookId -BodyParameter $params

```