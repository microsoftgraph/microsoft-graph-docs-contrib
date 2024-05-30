---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.DirectoryManagement

$params = @{
	values = @(
		@{
			name = "CustomBlockedWordsList"
			value = "Contoso"
		}
	)
}

Update-MgBetaDirectorySetting -DirectorySettingId $directorySettingId -BodyParameter $params

```