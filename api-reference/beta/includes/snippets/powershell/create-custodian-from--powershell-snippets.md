---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Compliance

$params = @{
	email = "AdeleV@contoso.com"
	applyHoldToSources = "true"
}

New-MgBetaComplianceEdiscoveryCaseCustodian -CaseId $caseId -BodyParameter $params

```