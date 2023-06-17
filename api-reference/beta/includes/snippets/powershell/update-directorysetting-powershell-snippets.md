---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.DirectoryManagement

$params = @{
	values = @(
		@{
			name = "CustomBlockedWordsList"
			value = "Contoso"
		}
	)
}

Update-MgDirectorySetting -DirectorySettingId $directorySettingId -BodyParameter $params

```