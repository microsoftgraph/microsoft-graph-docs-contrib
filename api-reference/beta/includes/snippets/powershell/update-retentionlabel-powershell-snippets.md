---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	"@odata.type" = "#microsoft.graph.security.retentionLabel"
	DisplayName = "String"
	BehaviorDuringRetentionPeriod = "String"
	ActionAfterRetentionPeriod = "String"
	RetentionTrigger = "String"
	RetentionDuration = @{
		"@odata.type" = "microsoft.graph.security.retentionDuration"
	}
	IsInUse = "Boolean"
	DescriptionForAdmins = "String"
	DescriptionForUsers = "String"
	CreatedBy = @{
		"@odata.type" = "microsoft.graph.identitySet"
	}
	LabelToBeApplied = "String"
	DefaultRecordBehavior = "String"
}

Update-MgSecurityLabelRetentionLabel -RetentionLabelId $retentionLabelId -BodyParameter $params

```