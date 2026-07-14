---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.DirectoryManagement

$params = @{
	templateId = "d209f6fa-3839-4d70-b83f-60b1c64d0e8f"
	values = @(
		@{
			name = "EnableMIPLabels"
			value = "true"
		}
	)
}

New-MgBetaDirectorySetting -BodyParameter $params

```