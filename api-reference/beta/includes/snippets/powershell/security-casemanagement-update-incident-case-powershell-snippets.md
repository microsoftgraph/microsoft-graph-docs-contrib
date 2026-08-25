---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	"@odata.type" = "#microsoft.graph.security.caseManagement.incidentCase"
	displayName = "Incident Case MS-002"
	status = "InProgress"
	classification = "truePositive"
	determination = "phishing"
	severity = "high"
}

Update-MgBetaSecurityCaseManagementCase -CaseId $caseId -BodyParameter $params

```