---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Groups

$params = @{
	Description = "Library Assist"
	DisplayName = "Library Assist"
	GroupTypes = @(
		"Unified"
	)
	MailEnabled = $true
	MailNickname = "library-help"
}

Update-MgGroup -GroupId $groupId -BodyParameter $params

```