---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Security

$params = @{
	site = @{
		webUrl = "https://m365x809305.sharepoint.com/sites/Retail"
	}
}

New-MgSecurityCaseEdiscoveryCaseLegalHoldSiteSource -EdiscoveryCaseId $ediscoveryCaseId -EdiscoveryHoldPolicyId $ediscoveryHoldPolicyId -BodyParameter $params

```