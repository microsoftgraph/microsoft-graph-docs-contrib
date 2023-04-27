---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	"@odata.type" = "#microsoft.graph.security.retentionLabel"
	displayName = "String"
	behaviorDuringRetentionPeriod = "String"
	actionAfterRetentionPeriod = "String"
	retentionTrigger = "String"
	retentionDuration = @{
		"@odata.type" = "microsoft.graph.security.retentionDuration"
	}
	isInUse = "Boolean"
	descriptionForAdmins = "String"
	descriptionForUsers = "String"
	createdBy = @{
		"@odata.type" = "microsoft.graph.identitySet"
	}
	labelToBeApplied = "String"
	defaultRecordBehavior = "String"
}

New-MgSecurityLabelRetentionLabel -BodyParameter $params

```