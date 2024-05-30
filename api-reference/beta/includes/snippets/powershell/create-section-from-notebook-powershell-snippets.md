---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Notes

$params = @{
	displayName = "Section name"
}

# A UPN can also be used as -UserId.
New-MgBetaUserOnenoteNotebookSection -UserId $userId -NotebookId $notebookId -BodyParameter $params

```