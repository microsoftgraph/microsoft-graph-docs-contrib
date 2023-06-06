---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Compliance

$params = @{
	email = "megan@contoso.com"
	includedSources = "mailbox, site"
}

New-MgComplianceEdiscoveryCaseCustodianUserSource -CaseId $caseId -CustodianId $custodianId -BodyParameter $params

```