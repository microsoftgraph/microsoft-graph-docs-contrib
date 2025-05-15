---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.DirectoryObjects

$params = @{
	entityType = "Group"
	displayName = "test"
	mailNickname = "test"
	onBehalfOfUserId = "onBehalfOfUserId-value"
}

Test-MgDirectoryObjectProperty -BodyParameter $params

```