---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Groups

$params = @{
	Description = "Marketing group"
	DisplayName = "Marketing resources"
	MailEnabled = $false
	MailNickname = "markres"
	SecurityEnabled = $true
}

New-MgGroup -BodyParameter $params

```