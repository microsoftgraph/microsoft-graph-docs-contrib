---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	email = "admin@contoso.com"
	includedSources = "mailbox, site"
}

New-MgBetaSecurityCaseEdiscoveryCaseCustodianUserSource -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryCustodianId $ediscoveryCustodianId -BodyParameter $params

```