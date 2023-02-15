---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Groups

$params = @{
	Description = "Marketing department folks"
	DisplayName = "Marketing department"
	GroupTypes = @(
		"Unified"
		"DynamicMembership"
	)
	MailEnabled = $true
	MailNickname = "marketing"
	SecurityEnabled = $false
	MembershipRule = "user.department -eq "Marketing""
	MembershipRuleProcessingState = "on"
}

New-MgGroup -BodyParameter $params

```