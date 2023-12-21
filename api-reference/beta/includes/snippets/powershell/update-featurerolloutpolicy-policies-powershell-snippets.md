---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Beta.Identity.SignIns

$params = @{
	displayName = "PasswordHashSync Rollout Policy"
	description = "PasswordHashSync Rollout Policy"
	isEnabled = $true
	isAppliedToOrganization = $false
}

Update-MgBetaPolicyFeatureRolloutPolicy -FeatureRolloutPolicyId $featureRolloutPolicyId -BodyParameter $params

```