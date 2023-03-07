---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Groups

$params = @{
	DisplayName = "New Managers March 2017"
	Description = "New Managers training course for March 2017"
	GroupTypes = @(
		"Unified"
	)
	MailEnabled = $true
	MailNickname = "newMan201703"
	SecurityEnabled = $false
}

New-MgGroup -BodyParameter $params

```