---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Compliance

$params = @{
	group = @{
		mail = "SecretGroup@contoso.com"
	}
	includedSources = "mailbox, site"
}

New-MgComplianceEdiscoveryCaseCustodianUnifiedGroupSource -CaseId $caseId -CustodianId $custodianId -BodyParameter $params

```