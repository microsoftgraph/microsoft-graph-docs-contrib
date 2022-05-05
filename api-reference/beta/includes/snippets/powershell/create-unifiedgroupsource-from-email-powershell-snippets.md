---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Compliance

$params = @{
	Group = @{
		Mail = "SecretGroup@contoso.com"
	}
	IncludedSources = "mailbox, site"
}

New-MgComplianceEdiscoveryCaseCustodianUnifiedGroupSource -CaseId $caseId -CustodianId $custodianId -BodyParameter $params

```