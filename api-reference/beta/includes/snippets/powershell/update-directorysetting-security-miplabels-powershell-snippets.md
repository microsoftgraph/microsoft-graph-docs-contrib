---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.DirectoryManagement

$params = @{
	values = @(
		@{
			name = "EnableMIPLabels"
			value = "true"
		}
	)
}

Update-MgBetaDirectorySetting -DirectorySettingId $directorySettingId -BodyParameter $params

```