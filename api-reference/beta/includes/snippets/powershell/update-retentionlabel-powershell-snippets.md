---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	"@odata.type" = "#microsoft.graph.security.retentionLabel"
	retentionDuration = @{
		"@odata.type" = "microsoft.graph.security.retentionDuration"
	}
	descriptionForAdmins = "String"
	descriptionForUsers = "String"
	labelToBeApplied = "String"
	defaultRecordBehavior = "String"
}

Update-MgSecurityLabelRetentionLabel -RetentionLabelId $retentionLabelId -BodyParameter $params

```