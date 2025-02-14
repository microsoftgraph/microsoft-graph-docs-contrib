---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	description = "updated description"
}

Update-MgBetaSecurityCaseEdiscoveryCaseLegalHold -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryHoldPolicyId $ediscoveryHoldPolicyId -BodyParameter $params

```