---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	email = "admin@contoso.com"
	includedSources = "mailbox"
}

New-MgBetaSecurityCaseEdiscoveryCaseLegalHoldUserSource -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryHoldPolicyId $ediscoveryHoldPolicyId -BodyParameter $params

```