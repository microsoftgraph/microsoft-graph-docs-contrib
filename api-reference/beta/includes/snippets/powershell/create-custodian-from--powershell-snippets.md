---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Compliance

$params = @{
	email = "AdeleV@contoso.com"
	applyHoldToSources = "true"
}

New-MgComplianceEdiscoveryCaseCustodian -CaseId $caseId -BodyParameter $params

```