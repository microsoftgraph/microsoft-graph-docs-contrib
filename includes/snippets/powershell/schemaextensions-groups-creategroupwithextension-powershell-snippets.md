---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Groups

$params = @{
	displayName = "New Managers March 2017"
	description = "New Managers training course for March 2017"
	groupTypes = @(
		"Unified"
	)
	mailEnabled = $true
	mailNickname = "newMan201703"
	securityEnabled = $false
}

New-MgGroup -BodyParameter $params

```