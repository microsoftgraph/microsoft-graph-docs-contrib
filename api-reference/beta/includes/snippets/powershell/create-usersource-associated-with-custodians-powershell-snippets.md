---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	email = "admin@M365x809305.onmicrosoft.com"
	includedSources = "mailbox, site"
}

New-MgBetaSecurityCaseEdiscoveryCaseCustodianUserSource -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryCustodianId $ediscoveryCustodianId -BodyParameter $params

```