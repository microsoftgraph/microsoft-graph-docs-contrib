---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Groups

$params = @{
	Description = "Group assignable to a role"
	DisplayName = "Role assignable group"
	GroupTypes = @(
		"Unified"
	)
	IsAssignableToRole = $true
	MailEnabled = $true
	SecurityEnabled = $true
	MailNickname = "contosohelpdeskadministrators"
	"Owners@odata.bind" = @(
		"https://graph.microsoft.com/beta/users/99e44b05-c10b-4e95-a523-e2732bbaba1e"
	)
	"Members@odata.bind" = @(
		"https://graph.microsoft.com/beta/users/6ea91a8d-e32e-41a1-b7bd-d2d185eed0e0"
		"https://graph.microsoft.com/beta/users/4562bcc8-c436-4f95-b7c0-4f8ce89dca5e"
	)
}

New-MgGroup -BodyParameter $params

```