---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	definition = @(
		"definition-value"
	)
	displayName = "displayName-value"
	isOrganizationDefault = $true
}

Update-MgBetaPolicyTokenIssuancePolicy -TokenIssuancePolicyId $tokenIssuancePolicyId -BodyParameter $params

```