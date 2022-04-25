---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Compliance

$params = @{
	Email = "AdeleV@contoso.com"
	ApplyHoldToSources = "true"
}

New-MgComplianceEdiscoveryCaseCustodian -CaseId $caseId -BodyParameter $params

```