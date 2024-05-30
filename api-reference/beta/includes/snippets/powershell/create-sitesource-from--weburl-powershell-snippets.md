---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Security

$params = @{
	site = @{
		webUrl = "https://m365x809305.sharepoint.com/sites/Retail"
	}
}

New-MgBetaSecurityCaseEdiscoveryCaseLegalHoldSiteSource -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryHoldPolicyId $ediscoveryHoldPolicyId -BodyParameter $params

```