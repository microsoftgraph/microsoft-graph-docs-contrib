---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Compliance

$params = @{
	ApplyHoldToSources = "false"
}

Update-MgComplianceEdiscoveryCaseCustodian -CaseId $caseId -CustodianId $custodianId -BodyParameter $params

```