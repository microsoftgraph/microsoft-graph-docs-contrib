---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Groups

$params = @{
	description = "Marketing department folks"
	displayName = "Marketing department"
	groupTypes = @(
		"Unified"
		"DynamicMembership"
	)
	mailEnabled = $true
	mailNickname = "marketing"
	securityEnabled = $false
	membershipRule = "user.department -eq "Marketing""
	membershipRuleProcessingState = "on"
}

New-MgBetaGroup -BodyParameter $params

```