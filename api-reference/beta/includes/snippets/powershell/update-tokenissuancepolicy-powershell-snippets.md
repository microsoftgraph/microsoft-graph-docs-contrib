---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	definition = @(
		"definition-value"
	)
	displayName = "displayName-value"
	isOrganizationDefault = $true
}

Update-MgPolicyTokenIssuancePolicy -TokenIssuancePolicyId $tokenIssuancePolicyId -BodyParameter $params

```