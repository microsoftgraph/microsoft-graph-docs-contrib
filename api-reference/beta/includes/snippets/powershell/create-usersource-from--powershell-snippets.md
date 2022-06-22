---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	Email = "admin@M365x809305.onmicrosoft.com"
	IncludedSources = "mailbox, site"
}

New-MgSecurityCaseEdiscoveryCaseLegalHoldUserSource -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryHoldPolicyId $ediscoveryHoldPolicyId -BodyParameter $params

```