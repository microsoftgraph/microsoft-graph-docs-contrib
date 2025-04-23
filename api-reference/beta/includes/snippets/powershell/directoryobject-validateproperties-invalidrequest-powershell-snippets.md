---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.DirectoryObjects

$params = @{
	entityType = "Group"
	displayName = "test"
	mailNickname = "test"
	onBehalfOfUserId = "onBehalfOfUserId-value"
}

Test-MgBetaDirectoryObjectProperty -BodyParameter $params

```