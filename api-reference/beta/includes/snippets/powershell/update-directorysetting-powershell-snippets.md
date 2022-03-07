---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	Values = @(
		@{
			Name = "name-value"
			Value = "value-value"
		}
	)
}

Update-MgDirectorySetting -DirectorySettingId $directorySettingId -BodyParameter $params

```