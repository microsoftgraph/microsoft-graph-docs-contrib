---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Groups

$params = @{
	description = "Library Assist"
	displayName = "Library Assist"
	groupTypes = @(
		"Unified"
	)
	mailEnabled = $true
	mailNickname = "library-help"
}

Update-MgGroup -GroupId $groupId -BodyParameter $params

```