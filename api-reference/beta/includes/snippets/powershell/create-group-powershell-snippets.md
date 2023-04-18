---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Groups

$params = @{
	description = "Self help community for golf"
	displayName = "Golf Assist"
	groupTypes = @(
		"Unified"
	)
	mailEnabled = $true
	mailNickname = "golfassist"
	securityEnabled = $false
}

New-MgGroup -BodyParameter $params

```