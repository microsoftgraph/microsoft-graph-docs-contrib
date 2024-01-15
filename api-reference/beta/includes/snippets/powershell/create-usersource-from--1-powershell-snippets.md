---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Compliance

$params = @{
	email = "megan@contoso.com"
	includedSources = "mailbox, site"
}

New-MgBetaComplianceEdiscoveryCaseCustodianUserSource -CaseId $caseId -CustodianId $custodianId -BodyParameter $params

```