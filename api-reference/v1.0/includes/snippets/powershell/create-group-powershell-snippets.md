---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Groups

$params = @{
	description = "Self help community for library"
	displayName = "Library Assist"
	groupTypes = @(
		"Unified"
	)
	mailEnabled = $true
	mailNickname = "library"
	securityEnabled = $false
}

New-MgGroup -BodyParameter $params

```