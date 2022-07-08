---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Groups

$params = @{
	Description = "Group with designated owner and members"
	DisplayName = "Operations group"
	GroupTypes = @(
	)
	MailEnabled = $false
	MailNickname = "operations2019"
	SecurityEnabled = $true
	"Owners@odata.bind" = @(
		"https://graph.microsoft.com/v1.0/users/26be1845-4119-4801-a799-aea79d09f1a2"
	)
	"Members@odata.bind" = @(
		"https://graph.microsoft.com/v1.0/users/ff7cb387-6688-423c-8188-3da9532a73cc"
		"https://graph.microsoft.com/v1.0/users/69456242-0067-49d3-ba96-9de6f2728e14"
	)
}

New-MgGroup -BodyParameter $params

```