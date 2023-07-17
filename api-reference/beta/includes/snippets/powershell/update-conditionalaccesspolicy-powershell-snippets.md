---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	conditions = @{
		signInRiskLevels = @(
			"high"
			"medium"
			"low"
		)
	}
}

Update-MgBetaIdentityConditionalAccessPolicy -ConditionalAccessPolicyId $conditionalAccessPolicyId -BodyParameter $params

```