---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Notes

$params = @{
	DisplayName = "Section group name"
}

# A UPN can also be used as -UserId.
New-MgUserOnenoteNotebookSectionGroup -UserId $userId -NotebookId $notebookId -BodyParameter $params

```