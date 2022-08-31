---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Groups

$params = @{
	Description = "Self help community for library"
	DisplayName = "Library Assist"
	GroupTypes = @(
		"Unified"
	)
	MailEnabled = $true
	MailNickname = "library"
	SecurityEnabled = $false
}

New-MgGroup -BodyParameter $params

```