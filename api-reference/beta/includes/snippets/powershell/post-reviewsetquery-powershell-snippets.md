---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Compliance

$params = @{
	displayName = "My Query 1"
	query = "(subject:"Quarterly Financials")"
}

New-MgComplianceEdiscoveryCaseReviewSetQuery -CaseId $caseId -ReviewSetId $reviewSetId -BodyParameter $params

```