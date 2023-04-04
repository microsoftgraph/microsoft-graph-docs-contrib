---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	"@odata.type" = "#microsoft.graph.security.retentionLabel"
	RetentionDuration = @{
		"@odata.type" = "microsoft.graph.security.retentionDuration"
	}
	DescriptionForAdmins = "String"
	DescriptionForUsers = "String"
	LabelToBeApplied = "String"
	DefaultRecordBehavior = "String"
}

Update-MgSecurityLabelRetentionLabel -RetentionLabelId $retentionLabelId -BodyParameter $params

```