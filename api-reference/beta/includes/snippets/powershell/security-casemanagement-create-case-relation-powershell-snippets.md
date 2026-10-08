---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	"@odata.type" = "#microsoft.graph.security.caseManagement.incidentRelation"
	relatedResourceId = "987654321"
}

New-MgBetaSecurityCaseManagementCaseRelation -CaseId $caseId -BodyParameter $params

```