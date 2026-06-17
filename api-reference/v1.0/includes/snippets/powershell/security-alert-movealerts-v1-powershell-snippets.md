---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	alertIds = @(
	"da637551227677560813_-961444813"
"da637551227677560813_-961444814"
)
incidentId = "2972395"
alertComment = "Moving alerts for investigation consolidation"
newCorrelationReasons = "sameAsset, temporalProximity"
}

Move-MgSecurityAlert -BodyParameter $params

```