---
description: "Automatically generated file. DO NOT MODIFY"
---

```powershell

Import-Module Microsoft.Graph.Identity.SignIns

$params = @{
	DisplayName = "PasswordHashSync Rollout Policy"
	Description = "PasswordHashSync Rollout Policy"
	IsEnabled = $true
	IsAppliedToOrganization = $false
}

Update-MgPolicyFeatureRolloutPolicy -FeatureRolloutPolicyId $featureRolloutPolicyId -BodyParameter $params

```