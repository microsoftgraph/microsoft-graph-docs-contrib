---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Compliance

$params = @{
	DisplayName = "My Query 1"
	Query = "(subject:"Quarterly Financials")"
}

New-MgComplianceEdiscoveryCaseReviewSetQuery -CaseId $caseId -ReviewSetId $reviewSetId -BodyParameter $params

```