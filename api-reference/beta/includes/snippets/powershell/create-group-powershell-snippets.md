---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Groups

$params = @{
	Description = "Self help community for golf"
	DisplayName = "Golf Assist"
	GroupTypes = @(
		"Unified"
	)
	MailEnabled = $true
	MailNickname = "golfassist"
	SecurityEnabled = $false
}

New-MgGroup -BodyParameter $params

```